# $OpenBSD: Makefile,v 1.18 2000/10/22 14:03:25 espie Exp $

DISTNAME=       procmail-3.15
CATEGORIES=	mail
NEED_VERSION=	1.333
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

MAINTAINER=     Bruno Rohee <rohee@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE=	http://www.procmail.org

SAMPLESDIR=	${PREFIX}/share/examples/procmail

post-install:
	$(INSTALL_DATA_DIR) ${SAMPLESDIR}
	$(INSTALL_DATA) ${WRKSRC}/examples/* ${SAMPLESDIR}

.include <bsd.port.mk>
