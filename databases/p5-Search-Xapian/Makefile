# $OpenBSD: Makefile,v 1.14 2014/06/14 23:24:54 sthen Exp $

COMMENT=		perl bindings for the xapian search library

V=			1.2.15
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
