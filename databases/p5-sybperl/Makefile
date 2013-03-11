# $OpenBSD: Makefile,v 1.31 2013/03/11 02:52:07 espie Exp $

DISTNAME=	sybperl-2.19
PKGNAME=	p5-${DISTNAME}
REVISION=	0
CATEGORIES=	databases perl5

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB +=	c m sybdb>=5 ct>=3

SHARED_ONLY=	Yes

COMMENT=	Sybase database access in Perl
HOMEPAGE=	http://www.peppler.org/freeware/sybperl.html
MASTER_SITES=	http://www.peppler.org/downloads/

MODULES=	devel/gettext
LIB_DEPENDS=	databases/freetds

CONFIGURE_STYLE= perl
CONFIGURE_ENV=	SYBASE="${LOCALBASE}"

TEST_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
