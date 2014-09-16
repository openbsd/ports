# $OpenBSD: Makefile,v 1.15 2014/09/16 12:45:21 sthen Exp $

COMMENT=		perl bindings for the xapian search library

V=			1.2.15
PORTROACH=		limitw:1,even
DISTNAME=		Search-Xapian-${V}.0
CATEGORIES=		databases
MODULES=		cpan
REVISION=		0

HOMEPAGE=		http://xapian.org/

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		m stdc++ xapian

MASTER_SITES=		http://oligarchy.co.uk/xapian/${V}/

LIB_DEPENDS=		databases/xapian-core>=${V}

.include <bsd.port.mk>
