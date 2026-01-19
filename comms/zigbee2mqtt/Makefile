# building uses "esbuild" as a node module, which fetches a binary
# (compiled golang program). as of esbuild 0.24.2, aarch64 and amd64
# binaries are available. preparing an npm cache distfile for offline
# builds that works on both aarch64 and amd64 is a bit awkward;
# currently I've done this but can't guarantee to keep on doing so.
ONLY_FOR_ARCHS=	amd64 aarch64

COMMENT=	Zigbee to MQTT bridge

GH_ACCOUNT=	Koenkk
GH_PROJECT=	zigbee2mqtt
GH_TAGNAME=	2.7.2

SITES.dep=	https://spacehopper.org/mirrors/
DISTFILES.dep=	zigbee2mqtt-${GH_TAGNAME}-vendor.tar.xz

CATEGORIES=	comms

HOMEPAGE=	https://www.zigbee2mqtt.io/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} m

COMPILER=	base-clang

BUILD_DEPENDS=	lang/node
RUN_DEPENDS=	lang/node

NO_TEST=	Yes

do-configure:
	@echo - installing npm deps from cache to WRKDIR
	cd ${WRKSRC}; env -i HOME=${WRKDIR} PATH=$$PATH npm install \
		-dd --audit=false --include=dev --cache=${WRKDIR}/npm-cache \
		--prefer-offline

do-build:
	cd ${WRKSRC}; \
	env -i HOME=${WRKDIR} PATH=$$PATH npm run build -d --cache=${WRKDIR}/npm-cache

do-install:
	cd ${WRKSRC}; env -i HOME=${WRKDIR} PATH=$$PATH \
	npm install -dd --exclude=dev --global --cache=${WRKDIR}/npm-cache \
		--prefer-offline --prefix=${PREFIX} --install-links
	mv ${PREFIX}/lib/node_modules/zigbee2mqtt/data \
		${PREFIX}/share/examples/zigbee2mqtt
	ln -s /var/db/zigbee2mqtt ${PREFIX}/lib/node_modules/zigbee2mqtt/data
	rm -rf ${PREFIX}/lib/node_modules/zigbee2mqtt/node_modules/@serialport/bindings-cpp/prebuilds

# maintainer target - npm normally expects to work online, but ports
# must be able to build without network access so we work around this
# by running build steps online, and saving the npm cache directory.
# extra mess because this has to be done on amd64 *and* aarch64 because
# the different archs download different files.
dist: ${FULLDISTDIR}/${GH_DISTFILE}
	@set -x; \
	t=`mktemp -d /tmp/zigbee2mqtt.XXXXXXXXXX`; \
	f=$$t/zigbee2mqtt-${GH_TAGNAME}-vendor.tar.xz; \
	export HOME=$$t LC_CTYPE=C; \
	cd $$t; \
	tar xzf ${FULLDISTDIR}/${GH_DISTFILE:C,\{.*,,}; \
	cd ${WRKDIST:C,^.*/,,}; \
	npm install -dd --include=dev --cache=$$t/npm-cache; \
	npm run build -dd --cache=$$t/npm-cache; \
	npm install -dd --exclude=dev --global --cache=$$t/npm-cache --prefix=$$t/inst --install-links; \
	cd -; \
	rsync -av $$t/ m27:$$t/; \
	ssh m27 "cd $$t/${WRKDIST:C,^.*/,,}; \
	  npm install -dd --include=dev --cache=$$t/npm-cache; \
	  npm run build -dd --cache=$$t/npm-cache; \
	  npm install -dd --exclude=dev --global --cache=$$t/npm-cache --prefix=$$t/inst --install-links"; \
	rsync -av m27:$$t/ $$t/; \
	rm -r npm-cache/_logs; \
	tar cf - npm-cache | xz -T 0 > $$f; \
	scp $$f naiad:mirrors/; \
	rm -rf $$t

.include <bsd.port.mk>
