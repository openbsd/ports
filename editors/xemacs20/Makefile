# OpenBSD Makefile for:	XEmacs
# Version required:	20.4
# Date created:		3 January 1999
# Whom:			Hans Guenter Weigand
#
# $OpenBSD: Makefile,v 1.1.1.1 1999/01/18 04:42:41 marc Exp $

# If MULE extensions are desired use
#
#	make USE_MULE=YES

DISTNAME=	xemacs-20.4
CATEGORIES=	editors

MAINTAINER=	hgweigand@wiesbaden.netsurf.de

MASTER_SITES=	ftp://ftp.xemacs.org/pub/xemacs/${DISTNAME}/ \
		ftp://ftp.mpi-sb.mpg.de/pub/gnu/mirror/ftp.xemacs.org/xemacs/${DISTNAME}/ \
                ftp://ftp.usyd.edu.au:/pub/Xemacs/${DISTNAME}/ \
		ftp://ftp.lab.kdd.co.jp/xemacs/${DISTNAME}/ \
		ftp://ftp.th-darmstadt.de:/pub/editors/xemacs/${DISTNAME}/

LIB_DEPENDS=	jpeg.62.:${PORTSDIR}/graphics/jpeg \
		png.1.:${PORTSDIR}/graphics/png
BUILD_DEPENDS=	${PREFIX}/lib/libcompface.a:${PORTSDIR}/graphics/compface
#RUN_DEPENDS=	pgmtopbm:${PORTSDIR}/graphics/netpbm

IS_INTERACTIVE= yes
GNU_CONFIGURE=	yes
USE_GMAKE=	yes

# Figure out our '${arch}-unknown-openbsd${vers}' string as xemacs
# expects it to be.  Call it GCCARCH.
#
.if ${MACHINE} == "arc" || ${MACHINE} == "pmax" || ${MACHINE} == "wgrisc"
M_ARCH=		mipsel
.elif ${MACHINE} == "hkmips" || ${MACHINE} == "sgi"
M_ARCH=		mips
.else
M_ARCH=		${MACHINE_ARCH}
.endif
SYS_REL!=	uname -r

GCCARCH=	${M_ARCH}-unknown-openbsd${SYS_REL}

# Note: x11 includes and libs need NOT be added to --site-{includes,libraries}
#
CONFIGURE_ARGS= ${GCCARCH} \
		${CONFIG_MULE} \
		--with-gnu-make \
		--statedir=/var/run \
		--site-includes=/usr/include:${PREFIX}/include \
		--site-libraries=/usr/lib:${PREFIX}/lib \
		--infopath="${PREFIX}/info:/usr/share/info:${PREFIX}/lib/${DISTNAME}/info" \
		--rel-alloc

#		--site-runtime-libraries=/usr/lib:${PREFIX}/lib \

#
# handle MULE extensions here
#
.if defined(USE_MULE)
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} ${DISTNAME}-mule${EXTRACT_SUFX}
CONFIG_MULE=	--with-mule
PLIST_TEMPLATE=	${FILESDIR}/PLIST.template.mule
.else
PLIST_TEMPLATE=	${FILESDIR}/PLIST.template
.endif

# Do NOT strip on install.  We will strip those things that can be
# stripped after install. (XEmacs crashes if stripped on an alpha)
INSTALL_STRIP=
STRIP_PROGS=	b2m ctags etags gnuclient

.if (${MACHINE_ARCH} != "alpha")
STRIP_PROGS+=	${DISTNAME}
.endif
STRIP_EXECS=	cvtmail digest-doc fakemail gnuserv hexl make-docfile \
		make-path mmencode movemail profile sorted-doc wakeup yow

.if !defined(NO_WARNINGS)
pre-fetch:
	@${ECHO} ""
	@${ECHO} "*** If MULE extensions are desired use the command line"
	@${ECHO} "***	make USE_MULE=YES"
	@${ECHO} ""
.endif

pre-clean:
	@${RM} -f ${PKGDIR}/PLIST

pre-install pre-package:
	@${RM} -f ${PKGDIR}/PLIST
	@${SED} -e 's/||GCCARCH||/${GCCARCH}/' \
		${PLIST_TEMPLATE} >${PKGDIR}/PLIST

post-install:
.for file in ${STRIP_PROGS}
	strip ${PREFIX}/bin/${file}
.endfor
.for file in ${STRIP_EXECS}
	strip ${PREFIX}/lib/${DISTNAME}/${GCCARCH}/${file}
.endfor

# Don't install send-pr for everyone, only for XEmacs' private use.
	@${RM} -f ${PREFIX}/bin/send-pr
	@${RM} -f ${PREFIX}/bin/install-sid

.include <bsd.port.mk>
