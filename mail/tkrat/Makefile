# $OpenBSD: Makefile,v 1.1.1.1 2000/02/04 10:07:35 kevlo Exp $

DISTNAME=		tkrat-2.0b7
DIST_SUBDIR=		tkrat
CATEGORIES=     	mail x11

MAINTAINER=		riks@wni.com

MASTER_SITES=		http://www.dtek.chalmers.se/~maf/ratatosk/ \
			ftp://ftp.md.chalmers.se/pub/tkrat/ \
			ftp://ftp.sunet.se/pub/unix/mail/tkrat/
PATCH_SITES=		http://www.dtek.chalmers.se/~maf/ratatosk/patches/2.0b7/
PATCHFILES=		diff.thsort diff.font diff.isotab

LIB_DEPENDS=    	tcl82.1.3:${PORTSDIR}/lang/tcl82 \
			tk82.1.3:${PORTSDIR}/x11/tk82	


# requires bsd.port.mk 1.71 or later
#
# when using USE_AUTOCONF/GNU_CONFIGURE/HAS_CONFIGURE only use ONE of
# them
#
USE_X11=		yes
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--with-tcl-bin=/usr/local/bin
CONFIGURE_ARGS+=	--with-tcl-include="/usr/local/include/tcl8.2 \
				/usr/local/include/tk8.2"

.include <bsd.port.mk>
