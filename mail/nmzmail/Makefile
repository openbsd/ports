# $OpenBSD: Makefile,v 1.2 2009/09/10 16:51:43 sthen Exp $

COMMENT=	fast maildir search engine

DISTNAME=	nmzmail-1.1
PKGNAME=	${DISTNAME}p0

CATEGORIES=	mail textproc
HOMEPAGE=	http://www.ecademix.com/JohannesHofmann/nmzmail.html

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c readline termcap

MASTER_SITES=	${HOMEPAGE:nmzmail.html=}

BUILD_DEPENDS=	::textproc/namazu
RUN_DEPENDS=	${BUILD_DEPENDS}

# should be 2.63
AUTOCONF_VERSION=2.61
CONFIGURE_STYLE=gnu autoconf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nmzmail
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/nmzmail/

.include <bsd.port.mk>
