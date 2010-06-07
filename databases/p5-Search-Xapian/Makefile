# $OpenBSD: Makefile,v 1.2 2010/06/07 09:28:39 ajacoutot Exp $

COMMENT=		perl bindings for the xapian search library

DISTNAME=		Search-Xapian-1.0.17.0
PKGNAME=		p5-${DISTNAME}p0
CATEGORIES=		databases
MODULES=		cpan

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += e2fs-uuid m stdc++ z

LIB_DEPENDS=		xapian::databases/xapian-core

.include <bsd.port.mk>
