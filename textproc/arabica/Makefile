# $OpenBSD: Makefile,v 1.1.1.1 2012/03/05 18:03:37 landry Exp $

COMMENT =	XML and HTML processing toolkit
DISTNAME =	arabica-2010-November
PKGNAME =	arabica-2010.11
CATEGORIES =	textproc
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=arabica/}

HOMEPAGE =	http://www.jezuk.co.uk/cgi-bin/view/arabica

SHARED_LIBS +=	arabica	0.0 # 0.0

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE =	gnu

CONFIGURE_ENV =	CPPFLAGS='-I${LOCALBASE}/include'
USE_LIBTOOL =	Yes
WANTLIB +=	c expat m stdc++

.include <bsd.port.mk>
