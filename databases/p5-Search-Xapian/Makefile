# $OpenBSD: Makefile,v 1.4 2010/09/23 12:52:33 ajacoutot Exp $

COMMENT=		perl bindings for the xapian search library

V=			1.2.3
DISTNAME=		Search-Xapian-${V}.0
CATEGORIES=		databases
MODULES=		cpan

HOMEPAGE=		http://xapian.org/

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += e2fs-uuid m stdc++ z xapian

MASTER_SITES=		http://oligarchy.co.uk/xapian/${V}/

LIB_DEPENDS=		:xapian-core->=1.2.3:databases/xapian-core

.include <bsd.port.mk>
