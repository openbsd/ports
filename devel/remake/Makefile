COMMENT=		GNU make debugger

V=			1.6
PKGNAME=		remake-${V}
DISTNAME=		remake-4.3+dbg-${V}

CATEGORIES=		devel

HOMEPAGE=		http://bashdb.sourceforge.net/remake/mdb.html
SITES=			${SITE_SOURCEFORGE:=bashdb/}

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB+= c iconv intl readline

LIB_DEPENDS=		converters/libiconv \
			devel/gettext,-runtime

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--without-guile

# The test suite expects to find SHELL.
MAKE_ENV +=		SHELL=/bin/ksh

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/make ${PREFIX}/bin/remake
	${INSTALL_MAN} ${WRKSRC}/doc/make.1 ${PREFIX}/man/man1/remake.1

.include <bsd.port.mk>
