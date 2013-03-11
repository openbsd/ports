# $OpenBSD: Makefile,v 1.35 2013/03/11 10:50:03 espie Exp $

COMMENT=	framework to test programs

DISTNAME=	dejagnu-1.5
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=dejagnu/}

HOMEPAGE=	http://www.gnu.org/software/dejagnu/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	lang/expect,no_tk
RUN_DEPENDS=	lang/expect,no_tk

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
