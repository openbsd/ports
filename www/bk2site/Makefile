# $OpenBSD: Makefile,v 1.7 2001/10/02 01:16:27 naddy Exp $

COMMENT=	"convert Netscape bookmarks into a Yahoo-like website"

DISTNAME=	bk2site-1.1.5
CATEGORIES=	www
NEED_VERSION=	1.402
MASTER_SITES=	http://download.sourceforge.net/bk2site/

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_MAN} ${WRKSRC}/bk2site.1 ${PREFIX}/man/man1/
	${INSTALL_DATA} ${WRKSRC}/indexbase.html ${WRKSRC}/otherbase.html \
			${PREFIX}/share/bk2site/

.include <bsd.port.mk>
