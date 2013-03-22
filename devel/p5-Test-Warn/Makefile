# $OpenBSD: Makefile,v 1.12 2013/03/22 17:10:44 benoit Exp $

COMMENT= 	Perl extension to test methods for warnings

MODULES=	cpan
DISTNAME =	Test-Warn-0.24
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Sub-Uplevel>=0.12 \
		devel/p5-Tree-DAG_Node>=1.02

MAKE_ENV+=	TEST_POD=Yes

.include <bsd.port.mk>
