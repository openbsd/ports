VERSION=	1.9
DISTNAME=	automake-${VERSION}.6
REVISION=	13
PKGSPEC=	automake->=${VERSION},<1.10

AUTOCONF_VERSION=	2.59

# XXX why was this listed for 1.9 but not other versions?
TEST_DEPENDS=	print/texlive/base

post-patch:
	cd ${WRKSRC}; touch aclocal.m4 Makefile.in configure

post-install:
	cd ${PREFIX}/info && mv automake.info automake${SUFFIX}.info
	perl -pi -e "s,automake\: \(automake\),automake-1\.9\: \(automake-1\.9\)," \
		${PREFIX}/info/automake${SUFFIX}.info
	perl -pi -e "s,aclocal\: \(automake\),aclocal: \(automake-1\.9\)," \
		${PREFIX}/info/automake${SUFFIX}.info

.for f in info-1 info-2
	cd ${PREFIX}/info && mv automake.${f} automake${SUFFIX}.${f} \
		&& perl -pi -e "s,automake.${f},automake${SUFFIX}.${f}," \
		${PREFIX}/info/automake${SUFFIX}.info
.endfor

.include <bsd.port.mk>
