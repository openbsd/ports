# $OpenBSD: Makefile,v 1.39 2015/06/03 07:13:48 ajacoutot Exp $

COMMENT=	framework to test programs

DISTNAME=	dejagnu-1.5.3
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=dejagnu/}

HOMEPAGE=	https://www.gnu.org/software/dejagnu/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	lang/expect
RUN_DEPENDS=	lang/expect

USE_GMAKE=	Yes

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
