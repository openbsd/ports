# OpenBSD makefile for:	hylafax
# Version required:	v4.0pl2
# Date created:		2 Sep 1998
# Whom:			d
#
# $OpenBSD: Makefile,v 1.5 1998/09/04 00:35:54 d Exp $
#

DISTNAME=	hylafax-v4.0pl2
PKGNAME=	hylafax-4.0.2
CATEGORIES=	comms
MASTER_SITES=	ftp://ftp.sgi.com/sgi/fax/source/
EXTRACT_SUFX=	-tar.gz

MAINTAINER=	d@openbsd.org

BUILD_DEPENDS+= ${PREFIX}/lib/afm/Courier:${PORTSDIR}/print/afm

RUN_DEPENDS=	ghostscript-5.10:${PORTSDIR}/print/ghostscript5
LIB_DEPENDS=	tiff\\.3\\.4:${PORTSDIR}/graphics/tiff34 

.if !defined(A4)
PAGESIZE=	North American Letter
.else
PAGESIZE=	ISO A4
.endif

FAXUID=uucp
FAXGID=dialer

HAS_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-INSTALL="" \
		--with-MAKE=${MAKE} \
		--with-CC=${CC} \
		--with-CXX=${CXX} \
		--with-DIR_HTML=/usr/share/doc/html/hylafax \
		--with-PAGESIZE="${PAGESIZE}" \
		--with-LIBTIFF="-L${PREFIX}/lib -ltiff"  \
		--with-ZLIB=no --with-LIBZ='-lz' --with-ZLIBINC=/usr/include \
		--with-REGEX=no --with-LIBREGEX= --with-REGEXINC=/usr/include \
		--with-FAXUID=${FAXUID} --with-FAXGID=${FAXGID} \

MAN1=	choptest.1m cqtest.1m dialtest.1m faxabort.1m faxaddmodem.1m \
	faxalter.1 faxanswer.1m faxconfig.1m faxcover.1 faxcron.1m \
	faxgetty.1m faxinfo.1m faxmail.1 faxmodem.1m faxq.1m \
	faxqclean.1m faxquit.1m faxrcvd.1m faxrm.1 faxsend.1m \
	faxsetup.1m faxstat.1 faxstate.1m faxwatch.1m hfaxd.1m \
	hylafax.1 mkcover.1m notify.1m pagesend.1m pollrcvd.1m \
	ps2fax.1m recvstats.1m sendfax.1 sendpage.1 sgi2fax.1 \
	tagtest.1m textfmt.1 tiff2fax.1m tiffcheck.1m tsitest.1m \
	wedged.1m xferstats.1m

MAN4=	cid.4f config.4f destctrls.4f dialrules.4f hosts.4f hylafax.4f \
	info.4f log.4f pagermap.4f pagesizes.4f recvq.4f sendq.4f \
	shutdown.4f status.4f tsi.4f typerules.4f xferlog.4f

SUID_EXES= 	${PREFIX}/sbin/faxgetty ${PREFIX}/sbin/faxq \
		${PREFIX}/bin/faxrm ${PREFIX}/bin/faxalter

pre-fetch:
.if !defined(A4)
	@${ECHO_MSG} "Type \"make A4=yes\" if you want A4 as default page size."
.else
	@${ECHO_MSG} "Using \"ISO A4\" for default page size."
.endif

post-install:
	/usr/sbin/chown ${FAXUID}.${FAXGID} ${SUID_EXES}
	chmod a=rx,u+s ${SUID_EXES}
	${INSTALL_DATA} ${FILESDIR}/hylafax.sh.sample ${PREFIX}/lib/fax
	${CAT} ${PKGDIR}/MESSAGE

.include <bsd.port.mk>
