# $OpenBSD: Makefile,v 1.9 2004/11/21 12:50:33 espie Exp $

COMMENT=	"astronomical julian date calculator"

DISTNAME=	jday-1.3
CATEGORIES=	astro
HOMEPAGE=	http://jday.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=jday/}

CONFIGURE_STYLE=gnu

do-regress:
	@cd ${WRKSRC}; ./RunTest

.include <bsd.port.mk>
