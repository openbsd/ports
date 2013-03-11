# $OpenBSD: Makefile,v 1.11 2013/03/11 10:50:23 espie Exp $

COMMENT= 	Perl extension to test methods for warnings

MODULES=	cpan
DISTNAME=	Test-Warn-0.23
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Sub-Uplevel>=0.12 \
		devel/p5-Tree-DAG_Node>=1.02

MAKE_ENV+=	TEST_POD=Yes

.include <bsd.port.mk>
