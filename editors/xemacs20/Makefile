# $OpenBSD: Makefile,v 1.11 2000/03/24 23:28:08 espie Exp $

# If MULE extensions are desired use
# make USE_MULE=YES

DISTNAME=	xemacs-20.4
CATEGORIES=	editors
NEED_VERSION=	 1.230
MASTER_SITES=	ftp://ftp.xemacs.org/pub/xemacs/${DISTNAME}/ \
		ftp://ftp.mpi-sb.mpg.de/pub/gnu/mirror/ftp.xemacs.org/xemacs/${DISTNAME}/ \
                ftp://ftp.usyd.edu.au:/pub/Xemacs/${DISTNAME}/ \
		ftp://ftp.lab.kdd.co.jp/xemacs/${DISTNAME}/ \
		ftp://ftp.th-darmstadt.de:/pub/editors/xemacs/${DISTNAME}/

MAINTAINER=	hgweigand@wiesbaden.netsurf.de

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${PREFIX}/lib/libcompface.a::graphics/compface
LIB_DEPENDS=	jpeg.62::graphics/jpeg \
		png.1.3::graphics/png

USE_GMAKE=	Yes
HAS_CONFIGURE=	Yes

# Put generated PLIST into WRKDIR to avoid collisions in a shared ports tree.
PLIST=		${WRKDIR}/PLIST

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
CONFIGURE_ARGS= ${GCCARCH} \
		${CONFIG_MULE} \
		--prefix="${PREFIX}" \
		--with-gnu-make \
		--with-ncurses \
		--with-dialogs="athena" \
		--with-database="berkdb" \
		--statedir="/var/run" \
		--site-includes="/usr/include:${PREFIX}/include" \
		--site-libraries="/usr/lib:${PREFIX}/lib" \
		--infopath="${PREFIX}/info:/usr/share/info:${PREFIX}/lib/${DISTNAME}/info" \
		--rel-alloc

#
# handle MULE extensions here
#
.if defined(USE_MULE)
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} ${DISTNAME}-mule${EXTRACT_SUFX}
CONFIG_MULE=	--with-mule
PLIST_TEMPLATE=	${FILESDIR}/PLIST.template.mule
PKGNAME=	${DISTNAME}-mule
.else
PLIST_TEMPLATE=	${FILESDIR}/PLIST.template
SUPDISTFILES=	${DISTNAME}-mule${EXTRACT_SUFX}
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

pre-fetch:
.if !defined(NO_WARNINGS)
	@echo ""
	@echo "*** If MULE extensions are desired use the command line"
	@echo "***	make USE_MULE=YES"
	@echo ""
.endif

# Generate platform specific PLIST from template
pre-install pre-package:
	@rm -f ${WRKDIR}/PLIST
	@sed -e 's/||GCCARCH||/${GCCARCH}/' \
		${PLIST_TEMPLATE} >${WRKDIR}/PLIST

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
