# $OpenBSD: Makefile,v 1.9 2011/07/26 06:07:33 ajacoutot Exp $

COMMENT=		transparent application input fuzzer

DISTNAME=		zzuf-0.13
REVISION=		2
CATEGORIES=		misc
MASTER_SITES=		http://libcaca.zoy.org/files/zzuf/

# WTFPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m

CONFIGURE_STYLE=	gnu
USE_GROFF=		Yes
USE_LIBTOOL=		Yes

pre-configure:
	perl -pi -e 's/zzcat/zzufcat/g' ${WRKSRC}/doc/zzcat.1.in

post-install:
	cd ${PREFIX}/bin && mv zzcat zzufcat
	cd ${PREFIX}/man/man1 && mv zzcat.1 zzufcat.1

.include <bsd.port.mk>
