# $OpenBSD: Makefile,v 1.9 2011/09/16 08:26:10 espie Exp $

COMMENT=		module and program for processing ID3 tags

DISTNAME=		eyeD3-0.6.14
REVISION =		4
CATEGORIES=		audio

HOMEPAGE=		http://eyed3.nicfit.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}releases/

MODULES=		lang/python

USE_GMAKE=		Yes
USE_GROFF =		Yes

CONFIGURE_STYLE=	gnu

NO_REGRESS=		Yes

pre-configure:
	perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},' ${WRKSRC}/bin/eyeD3

.include <bsd.port.mk>
