# $OpenBSD: Makefile,v 1.12 2013/03/11 02:52:07 espie Exp $

COMMENT=		perl bindings for the xapian search library

V=			1.2.12
DISTNAME=		Search-Xapian-${V}.0
CATEGORIES=		databases
MODULES=		cpan

HOMEPAGE=		http://xapian.org/

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		m stdc++ xapian

MASTER_SITES=		http://oligarchy.co.uk/xapian/${V}/

LIB_DEPENDS=		databases/xapian-core>=${V}

.include <bsd.port.mk>
