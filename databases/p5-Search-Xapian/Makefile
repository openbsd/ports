# $OpenBSD: Makefile,v 1.8 2010/12/28 17:47:09 ajacoutot Exp $

COMMENT=		perl bindings for the xapian search library

V=			1.2.4
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

WANTLIB += m stdc++ xapian

MASTER_SITES=		http://oligarchy.co.uk/xapian/${V}/

LIB_DEPENDS=		databases/xapian-core>=1.2.4

.include <bsd.port.mk>
