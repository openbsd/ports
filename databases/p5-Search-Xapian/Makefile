# $OpenBSD: Makefile,v 1.7 2010/11/26 07:18:59 espie Exp $

COMMENT=		perl bindings for the xapian search library

V=			1.2.3
DISTNAME=		Search-Xapian-${V}.0
CATEGORIES=		databases
MODULES=		cpan
USE_GROFF =		Yes

HOMEPAGE=		http://xapian.org/

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += e2fs-uuid m stdc++ z xapian

MASTER_SITES=		http://oligarchy.co.uk/xapian/${V}/

LIB_DEPENDS=		databases/xapian-core>=1.2.3

.include <bsd.port.mk>
