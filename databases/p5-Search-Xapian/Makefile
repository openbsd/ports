# $OpenBSD: Makefile,v 1.1.1.1 2010/06/07 08:15:28 jasper Exp $

COMMENT=		perl bindings for the xapian search library

DISTNAME=		Search-Xapian-1.0.17.0
CATEGORIES=		databases
MODULES=		cpan

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += m stdc++ z

LIB_DEPENDS=		xapian::databases/xapian-core

.include <bsd.port.mk>
