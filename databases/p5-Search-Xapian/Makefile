# $OpenBSD: Makefile,v 1.11 2012/10/25 14:06:26 dcoppa Exp $

COMMENT=		perl bindings for the xapian search library

V=			1.2.12
DISTNAME=		Search-Xapian-${V}.0
CATEGORIES=		databases
MODULES=		cpan

HOMEPAGE=		http://xapian.org/

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		m stdc++ xapian

MASTER_SITES=		http://oligarchy.co.uk/xapian/${V}/

LIB_DEPENDS=		databases/xapian-core>=${V}

.include <bsd.port.mk>
