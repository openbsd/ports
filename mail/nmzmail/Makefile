# $OpenBSD: Makefile,v 1.3 2009/09/24 16:13:26 okan Exp $

COMMENT=	fast maildir search engine

DISTNAME=	nmzmail-1.1
PKGNAME=	${DISTNAME}p1

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
RUN_DEPENDS=	::textproc/namazu # not autoconf

# should be 2.63
AUTOCONF_VERSION=2.61
CONFIGURE_STYLE=gnu autoconf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nmzmail
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/nmzmail/

.include <bsd.port.mk>
