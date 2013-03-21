# $OpenBSD: Makefile,v 1.11 2013/03/21 08:46:33 ajacoutot Exp $

COMMENT=		transparent application input fuzzer

DISTNAME=		zzuf-0.13
REVISION=		2
CATEGORIES=		misc
MASTER_SITES=		http://libcaca.zoy.org/files/zzuf/

# WTFPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m

CONFIGURE_STYLE=	gnu
USE_GROFF=		Yes

pre-configure:
	perl -pi -e 's/zzcat/zzufcat/g' ${WRKSRC}/doc/zzcat.1.in

post-install:
	cd ${PREFIX}/bin && mv zzcat zzufcat
	cd ${PREFIX}/man/man1 && mv zzcat.1 zzufcat.1

.include <bsd.port.mk>
