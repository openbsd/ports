# $OpenBSD: Makefile,v 1.3 1999/01/31 00:19:03 marc Exp $
#

DISTNAME=		xpdf-0.80
CATEGORIES=		textproc

MASTER_SITES=		ftp://ftp.foolabs.com/pub/xpdf/

DISTFILES=		xpdf-0.80.tgz

MAINTAINER=		apollo@slcnet.net

# If you dont want the decryption patch (you probably do), comment out
# the the following PATCHxxx variables.
# Please note though that it is encryption..and we all know about how
# the US feel about that. (no exporting)
#
PATCH_DIST_STRIP=	-p1
PATCH_SITES=		ftp://ftp.sci.usq.edu.au/pub/linux/xpdf/
PATCHFILES=		xpdf-0.80-decrypt.patch

USE_X11=		yes
GNU_CONFIGURE=		yes
CONFIGURE_ARGS=		--with-gzip \
			--with-Xpm-includes=${X11BASE}/include

.include <bsd.port.mk>
