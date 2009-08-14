# $OpenBSD: Makefile,v 1.1.1.1 2009/08/14 00:02:10 sthen Exp $

COMMENT=	fast maildir search engine
DISTNAME=	nmzmail-1.1

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

.include <bsd.port.mk>
