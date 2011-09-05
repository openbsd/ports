# $OpenBSD: Makefile,v 1.10 2011/09/05 12:11:01 jasper Exp $

COMMENT= 	Perl extension to test methods for warnings

MODULES=	cpan
DISTNAME=	Test-Warn-0.23
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Sub-Uplevel>=0.12 \
		devel/p5-Tree-DAG_Node>=1.02

MAKE_ENV+=	TEST_POD=Yes

.include <bsd.port.mk>
