VERSION=	1.15
DISTNAME=	automake-${VERSION}.1
PKGSPEC=	automake->=${VERSION},<1.16
EXTRACT_SUFX=	.tar.xz

MODPY_VERSION=	${MODPY_DEFAULT_VERSION_2}

AUTOCONF_VERSION=	2.69

post-install:
	cd ${PREFIX}/info && mv automake.info automake${SUFFIX}.info
	perl -pi -e "s,automake\: \(automake\),automake-1\.15\: \(automake-1\.15\)," \
		${PREFIX}/info/automake${SUFFIX}.info
	perl -pi -e "s,aclocal\: \(automake\),aclocal: \(automake-1\.15\)," \
		${PREFIX}/info/automake${SUFFIX}.info

.for f in info-1 info-2 info-3
	cd ${PREFIX}/info && mv automake.${f} automake${SUFFIX}.${f} \
		&& perl -pi -e "s,automake.${f},automake${SUFFIX}.${f}," \
		${PREFIX}/info/automake${SUFFIX}.info
.endfor

.include <bsd.port.mk>
