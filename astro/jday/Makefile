# $OpenBSD: Makefile,v 1.7 2002/12/30 16:26:17 naddy Exp $

COMMENT=	"astronomical julian date calculator"

DISTNAME=	jday-1.3
CATEGORIES=	astro
HOMEPAGE=	http://jday.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=jday/}

CONFIGURE_STYLE=gnu

do-regress:
	@cd ${WRKSRC}; ./RunTest

.include <bsd.port.mk>
