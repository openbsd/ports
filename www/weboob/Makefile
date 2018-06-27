# $OpenBSD: Makefile,v 1.8 2018/06/27 21:04:07 espie Exp $

COMMENT =	web out of browsers

MODPY_EGG_VERSION =	1.3
DISTNAME =	weboob-${MODPY_EGG_VERSION}

CATEGORIES =	www
HOMEPAGE =	http://weboob.org

# AGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://symlink.me/attachments/download/356/

MODULES =	lang/python

FLAVORS =	python3
FLAVOR ?=

USE_GMAKE =	Yes

MODPY_SETUPTOOLS =	Yes
MODPY_DISTUTILS_BUILDARGS = --qt --xdg

BUILD_DEPENDS +=	x11/py-qt5${MODPY_FLAVOR}
RUN_DEPENDS +=	devel/desktop-file-utils \
		x11/gtk+3,-guic \
		converters/py-html2text${MODPY_FLAVOR} \
		devel/py-dateutil${MODPY_FLAVOR} \
		devel/py-html5lib${MODPY_FLAVOR} \
		devel/py-simplejson${MODPY_FLAVOR} \
		devel/py-six${MODPY_FLAVOR} \
		graphics/py-Pillow${MODPY_FLAVOR} \
		net/curl \
		security/gnupg \
		textproc/py-lxml${MODPY_FLAVOR} \
		textproc/py-feedparser${MODPY_FLAVOR} \
		textproc/py-prettytable${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR} \
		textproc/py-cssselect${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR} \
		x11/py-qt5${MODPY_FLAVOR}

TEST_DEPENDS +=	${RUN_DEPENDS} \
		devel/py-coverage${MODPY_FLAVOR} \
		devel/py-nose${MODPY_FLAVOR} \
		shells/bash

.if ${FLAVOR:Mpython3}
PKGNAME =	weboob${MODPY_MAJOR_VERSION}-${MODPY_EGG_VERSION}
.else
RUN_DEPENDS +=	devel/py-futures \
		www/py-mechanize
.endif
REVISION =	0

MAKE_ENV +=	PYUIC5_EXECUTABLE=${LOCALBASE}/bin/pyuic5${MODPY_BIN_SUFFIX}

WEBOOB_BINARIES = boobank boobathon boobcoming boobill booblyrics boobmsg \
		  boobooks boobsize boobtracker cineoob comparoob cookboob \
		  flatboob galleroob geolooc handjoob havedate monboob \
		  parceloob pastoob qbooblyrics qboobmsg qcineoob qcookboob \
		  qflatboob qhandjoob qhavedate qvideoob qwebcontentedit \
		  radioob shopoob suboob translaboob traveloob videoob \
		  webcontentedit weboob weboob-cli weboob-config \
		  weboob-config-qt weboob-debug weboob-repos weboorrents \
		  wetboobs

post-install:
	rm -f ${PREFIX}/man/man1/masstransit.1 \
		${PREFIX}/share/applications/qgalleroob.desktop \
		${PREFIX}/share/applications/masstransit.desktop \
		${PREFIX}/share/icons/hicolor/64x64/apps/allomatch.png \
		${PREFIX}/share/icons/hicolor/64x64/apps/banquepopulaire.png \
		${PREFIX}/share/icons/hicolor/64x64/apps/google.png \
		${PREFIX}/share/icons/hicolor/64x64/apps/chatoob.png \
		${PREFIX}/share/icons/hicolor/64x64/apps/masstransit.png \
		${PREFIX}/share/icons/hicolor/64x64/apps/qgalleroob.png \
		${PREFIX}/share/icons/hicolor/64x64/apps/videoob-web.png
.for n in ${WEBOOB_BINARIES}
	mv ${PREFIX}/bin/${n} ${PREFIX}/bin/${n}${MODPY_BIN_SUFFIX}
	test -e ${PREFIX}/man/man1/${n}.1 && \
		mv ${PREFIX}/man/man1/${n}.1 \
			${PREFIX}/man/man1/${n}${MODPY_BIN_SUFFIX}.1 \
		|| true
	test -e ${PREFIX}/share/applications/${n}.desktop && \
		sed -i -e 's/=${n}$$/=${n}${MODPY_BIN_SUFFIX}/' \
			-e '/^Name=/s/$$/${MODPY_BIN_SUFFIX}/' \
			${PREFIX}/share/applications/${n}.desktop && \
		mv ${PREFIX}/share/applications/${n}.desktop \
			${PREFIX}/share/applications/${n}${MODPY_BIN_SUFFIX}.desktop \
		|| true
	test -e ${PREFIX}/share/icons/hicolor/64x64/apps/${n}.png && \
		mv ${PREFIX}/share/icons/hicolor/64x64/apps/${n}.png \
			${PREFIX}/share/icons/hicolor/64x64/apps/${n}${MODPY_BIN_SUFFIX}.png \
		|| true
.endfor

do-test:
	cd ${WRKSRC} && exec ${SETENV} ${MAKE_ENV} \
		LC_CTYPE=C.UTF-8 \
		WEBOOB_WORKDIR="${WRKDIR}/weboob-workdir" \
		./tools/run_tests.sh ${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
