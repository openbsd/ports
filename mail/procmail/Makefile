# $OpenBSD: Makefile,v 1.9 1999/11/01 07:12:00 turan Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

DISTNAME=       procmail-3.13.1
CATEGORIES=	mail
#NO_CDROM=	"NOFEE:	Can not sell" # is GPLed as of version 3.12

MASTER_SITES=	ftp://ftp.procmail.org/pub/procmail/ \
		ftp://ftp.psg.com/pub/unix/procmail/ \
		ftp://ftp.ucsb.edu/pub/mirrors/procmail/ \
		ftp://ftp.informatik.rwth-aachen.de/pub/packages/procmail/ \
		ftp://ftp.fu-berlin.de/pub/unix/mail/procmail/ \
		ftp://ftp.net.ohio-state.edu/pub/networking/mail/procmail/ \
		ftp://ftp.fdt.net/pub/unix/packages/procmail/ \
		ftp://ftp.tamu.edu/pub/mirrors/procmail/ \
		ftp://ftp.kfki.hu/pub/packages/mail/procmail/ \
		ftp://giswitch.sggw.waw.pl/pub/unix/procmail/ \
		ftp://ftp.solarisguide.com/pub/procmail/ \
		ftp://ftp.win.ne.jp/pub/network/mail/procmail/ \
		ftp://ftp.ring.gr.jp/pub/net/mail/procmail/ \
		ftp://sunsite.cnlab-switch.ch/mirror/procmail/ 

INSTALL_TARGET= install-suid install.man

MAINTAINER=     rohee@OpenBSD.ORG

HOMEPAGE=	http://www.procmail.org

# It asks for list af directories to do test for file locking
# (defaults to /tmp and ".", so return should suffice in most cases).
.if !defined(PACKAGE_BUILDING) # handled in patch-aa
IS_INTERACTIVE=	yes
.endif
NO_PACKAGE=	interactive port when target is package

.include <bsd.port.mk>
