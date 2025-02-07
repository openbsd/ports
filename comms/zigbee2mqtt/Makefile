# building uses "esbuild" as a node module, which fetches a binary
# (compiled golang). 0.24.2 has aarch64 and amd64.
ONLY_FOR_ARCHS=	aarch64 amd64

COMMENT=	Zigbee to MQTT bridge

V=		2.1.1
GH_ACCOUNT=	Koenkk
GH_PROJECT=	zigbee2mqtt
GH_TAGNAME=	$V

SITES.dep=	https://spacehopper.org/mirrors/
DISTFILES.dep=	zigbee2mqtt-$V-vendor.tar.xz

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

post-extract:
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

# maintainer convenience target
dist: ${FULLDISTDIR}/${GH_DISTFILE}
	@set -x; \
	t=`mktemp -d /tmp/zigbee2mqtt.XXXXXXXXXX`; \
	f=$$t/zigbee2mqtt-$V-vendor.tar.xz; \
	export HOME=$$t LC_CTYPE=C; \
	cd $$t; \
	tar xzf ${FULLDISTDIR}/${GH_DISTFILE:C,\{.*,,}; \
	cd ${WRKDIST:C,^.*/,,}; \
	npm install -dd --include=dev --cache=$$t/npm-cache; \
	npm run build -dd --cache=$$t/npm-cache; \
	npm install -dd --exclude=dev --global --cache=$$t/npm-cache --prefix=$$t/inst --install-links; \
	cd -; \
	rm -r npm-cache/_logs; \
	tar cf - npm-cache | xz -T 0 > $$f; \
	scp $$f naiad:mirrors/; \
	rm -rf $$t

.include <bsd.port.mk>
