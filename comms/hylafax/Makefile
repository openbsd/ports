# OpenBSD makefile for:	hylafax
# Version required:	v4.0pl1
# Date created:		8 Feb 1998
# Whom:			d
#
# $OpenBSD: Makefile,v 1.3 1998/05/06 02:57:32 marc Exp $
#

DISTNAME=	hylafax-v4.0pl1
PKGNAME=	hylafax-4.0.1
CATEGORIES=	comms
MASTER_SITES=	ftp://ftp.sgi.com/sgi/fax/source/
EXTRACT_SUFX=	-tar.gz

MAINTAINER=	d@openbsd.org

BUILD_DEPENDS=	bash:${PORTSDIR}/shells/bash2 \
		${PREFIX}/lib/afm/Courier:${PORTSDIR}/print/afm

# no dependency on ghostscript because we don't know which
# version the user prefers
RUN_DEPENDS=	bash:${PORTSDIR}/shells/bash2
LIB_DEPENDS=	tiff34\\.1\\.:${PORTSDIR}/graphics/tiff34 \
		jpeg\\.62\\.:${PORTSDIR}/graphics/jpeg

USE_GMAKE=	yes

# libtiff34 crashes on this machine when dynamically linked?? (mac68k)
# so change -ltiff34 to ${PREFIX}/lib/libtiff34.a to avoid this
HAS_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-INSTALL="" \
		--with-MAKE=gmake --with-CC=/usr/bin/cc \
		--with-LIBTIFF="-L${PREFIX}/lib -ltiff34 -ljpeg"  \
		--with-ZLIB=no --with-LIBZ='-lz' \
		--with-

MAN1=	hylafax.1 faxalter.1 faxcover.1 faxmail.1 faxrm.1 faxstat.1 sendfax.1 \
	sendpage.1 sgi2fax.1 textfmt.1
MAN5=	pagesizes.5f typerules.5f \
	hylafax.5f cid.5f config.5f destctrls.5f dialrules.5f hosts.5f \
	info.5f log.5f pagermap.5f recvq.5f sendq.5f shutdown.5f status.5f \
	tsi.5f xferlog.5f
MAN8=	cqtest.8c choptest.8c dialtest.8c faxabort.8c faxaddmodem.8c \
	faxanswer.8c faxconfig.8c faxmodem.8c faxstate.8c faxcron.8c \
	faxgetty.8c faxinfo.8c faxq.8c faxqclean.8c faxquit.8c faxrcvd.8c \
	faxsend.8c faxsetup.8c faxwatch.8c hfaxd.8c mkcover.8c notify.8c \
	pagesend.8c pollrcvd.8c ps2fax.8c recvstats.8c tagtest.8c tiff2fax.8c \
	tiffcheck.8c tsitest.8c wedged.8c xferstats.8c

SUID_EXES= 	${PREFIX}/sbin/faxgetty ${PREFIX}/sbin/faxq \
		${PREFIX}/bin/faxrm ${PREFIX}/bin/faxalter

post-install:
	/usr/sbin/chown uucp ${SUID_EXES}
	chmod a=rx,u+s ${SUID_EXES}
	@if [ ! -f ${PREFIX}/etc/rc.d/hylafax.sh.sample ]; then	\
		cp ${FILESDIR}/hylafax.sh.sample ${PREFIX}/etc/rc.d;	\
	fi
	${CAT} ${PKGDIR}/MESSAGE

.include <bsd.port.mk>
