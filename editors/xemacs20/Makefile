# $OpenBSD: Makefile,v 1.20 2000/10/23 21:45:30 naddy Exp $

# use flavors for mule and compface support
# e.g., make FLAVOR=mule

DISTNAME=	xemacs-20.4
CATEGORIES=	editors
NEED_VERSION=	1.305
FAKE=		No
MASTER_SITES=	ftp://ftp.xemacs.org/pub/xemacs/${DISTNAME}/ \
		ftp://ftp.mpi-sb.mpg.de/pub/gnu/mirror/ftp.xemacs.org/xemacs/${DISTNAME}/ \
                ftp://ftp.usyd.edu.au:/pub/Xemacs/${DISTNAME}/ \
		ftp://ftp.lab.kdd.co.jp/xemacs/${DISTNAME}/ \
		ftp://ftp.th-darmstadt.de:/pub/editors/xemacs/${DISTNAME}/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} 

MAINTAINER=	Hans-Guenter Weigand <hgw@d1906.inka.de>

PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=mule compface
FLAVOR?=

.if ${FLAVOR:L:Mcompface}
PERMIT_PACKAGE_CDROM=	No
BUILD_DEPENDS=	${PREFIX}/lib/libcompface.a::graphics/compface
CONFIGURE_ARGS+=--with-xface
.else
PERMIT_PACKAGE_CDROM=	Yes
CONFIGURE_ARGS+=--with-xface=no
.endif

.if ${FLAVOR:L:Mmule}
DISTFILES+=${DISTNAME}-mule${EXTRACT_SUFX}
CONFIGURE_ARGS+=--with-mule
.endif
SUPDISTFILES=${DISTNAME}-mule${EXTRACT_SUFX}

LIB_DEPENDS=	jpeg.62::graphics/jpeg \
		png.1::graphics/png

USE_GMAKE=	Yes
CONFIGURE_STYLE=simple

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
GCCARCH=	${M_ARCH}-unknown-openbsd${OSREV}
SED_PLIST=	|sed -e 's,@GCCARCH@,${GCCARCH},'

# Note: x11 includes and libs need NOT be added to --site-{includes,libraries}
CONFIGURE_ARGS+= ${GCCARCH} \
		--prefix='$${DESTDIR}${PREFIX}' \
		--with-gnu-make \
		--with-ncurses \
		--with-dialogs="athena" \
		--with-database="berkdb" \
		--statedir="/var/run" \
		--site-includes="/usr/include:${LOCALBASE}/include" \
		--site-libraries="/usr/lib:${LOCALBASE}/lib" \
		--infopath="${LOCALBASE}/info:/usr/share/info:${PREFIX}/lib/${DISTNAME}/info" \
		--rel-alloc

# Do NOT strip on install.  We will strip those things that can be
# stripped after install. (XEmacs crashes if stripped on an alpha)
INSTALL_STRIP=
STRIP_PROGS=	b2m ctags etags gnuclient

.if (${MACHINE_ARCH} != "alpha")
STRIP_PROGS+=	${DISTNAME}
.endif
STRIP_EXECS=	cvtmail digest-doc fakemail gnuserv hexl make-docfile \
		make-path mmencode movemail profile sorted-doc wakeup yow

post-install:
.for file in ${STRIP_PROGS}
	strip ${PREFIX}/bin/${file}
.endfor
.for file in ${STRIP_EXECS}
	strip ${PREFIX}/lib/${DISTNAME}/${GCCARCH}/${file}
.endfor

# Don't install send-pr for everyone, only for XEmacs' private use.
	@rm -f ${PREFIX}/bin/send-pr
	@rm -f ${PREFIX}/bin/install-sid

.include <bsd.port.mk>
