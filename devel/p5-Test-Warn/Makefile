# $OpenBSD: Makefile,v 1.6 2009/09/03 09:27:46 kevlo Exp $

COMMENT= 	Perl extension to test methods for warnings

MODULES=	cpan
DISTNAME=	Test-Warn-0.21
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=	.zip

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Array-Compare \
		::devel/p5-Test-Exception \
		::devel/p5-Tree-DAG_Node

MAKE_ENV+=	TEST_POD=Yes

.include <bsd.port.mk>
