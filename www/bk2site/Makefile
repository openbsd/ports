# $OpenBSD: Makefile,v 1.12 2004/01/25 21:10:51 pvalchev Exp $

COMMENT=	"convert Netscape bookmarks into a Yahoo-like website"

DISTNAME=	bk2site-1.1.8
CATEGORIES=	www
HOMEPAGE=	http://bk2site.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bk2site/}

# gcc3
MODULES=                gcc3
MODGCC3_ARCHES=         sparc64
MODGCC3_LANGS+=         c++

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-standard-datadir
MAKE_FLAGS=		CXXFLAGS="${CXXFLAGS}"


post-install:
	${INSTALL_MAN} ${WRKSRC}/bk2site.1 ${PREFIX}/man/man1/
	${INSTALL_DATA} ${WRKSRC}/indexbase.html ${WRKSRC}/otherbase.html \
			${PREFIX}/share/bk2site/

.include <bsd.port.mk>
