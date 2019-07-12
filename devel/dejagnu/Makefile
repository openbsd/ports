# $OpenBSD: Makefile,v 1.40 2019/07/12 20:44:07 sthen Exp $

COMMENT=	framework to test programs

DISTNAME=	dejagnu-1.5.3
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=dejagnu/}

HOMEPAGE=	https://www.gnu.org/software/dejagnu/

# GPLv3+
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	lang/expect
RUN_DEPENDS=	lang/expect

USE_GMAKE=	Yes

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
