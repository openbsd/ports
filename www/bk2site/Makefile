# $OpenBSD: Makefile,v 1.9 2002/10/17 11:25:39 naddy Exp $

COMMENT=	"convert Netscape bookmarks into a Yahoo-like website"

DISTNAME=	bk2site-1.1.8
CATEGORIES=	www
HOMEPAGE=	http://bk2site.sourceforge.net/

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bk2site/}

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-standard-datadir
MAKE_FLAGS=		CXXFLAGS="${CXXFLAGS}"

post-install:
	${INSTALL_MAN} ${WRKSRC}/bk2site.1 ${PREFIX}/man/man1/
	${INSTALL_DATA} ${WRKSRC}/indexbase.html ${WRKSRC}/otherbase.html \
			${PREFIX}/share/bk2site/

.include <bsd.port.mk>
