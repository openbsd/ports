# $OpenBSD: Makefile,v 1.3 2010/06/10 14:51:38 jasper Exp $

COMMENT=		perl bindings for the xapian search library

V=			1.2.0
DISTNAME=		Search-Xapian-${V}.0
CATEGORIES=		databases
MODULES=		cpan

HOMEPAGE=		http://xapian.org/

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += e2fs-uuid m stdc++ z

MASTER_SITES=		http://oligarchy.co.uk/xapian/${V}/

LIB_DEPENDS=		xapian::databases/xapian-core

.include <bsd.port.mk>
