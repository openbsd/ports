# $OpenBSD: Makefile,v 1.8 2003/09/29 13:02:29 naddy Exp $

COMMENT=	"astronomical julian date calculator"

DISTNAME=	jday-1.3
CATEGORIES=	astro
HOMEPAGE=	http://jday.sourceforge.net/

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
