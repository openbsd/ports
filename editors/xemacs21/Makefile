# $OpenBSD: Makefile,v 1.2 2000/10/22 14:03:11 espie Exp $
# Supported FLAVORS : mule | compface | no_x11 | clashdetect
# TODO : add flavours for Wnn, Canna, XFontSet and maybe kerberos
# Tested on : i386 sparc (thanks to Free&ALter Soft for the sparc)

VER=		21.1.12
DISTNAME=	xemacs-${VER}
CATEGORIES=	editors
NEED_VERSION=	1.218

MAINTAINER=	Jean-Yves Burlett <jean-yves@burlett.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES= 	ftp://ftp.xemacs.org/pub/xemacs/xemacs-21.1/ \
		ftp://ftp.pasteur.fr/pub/computing/xemacs/xemacs-21.1/ \
		ftp://ftp.mpi-sb.mpg.de/pub/gnu/mirror/ftp.xemacs.org/xemacs/xemacs-21.1/ \
		ftp://ftp.usyd.edu.au:/pub/Xemacs/xemacs-21.1/ \
		ftp://ftp.lab.kdd.co.jp/xemacs/xemacs-21.1/ \
		ftp://ftp.th-darmstadt.de/pub/editors/xemacs/xemacs-21.1/

SEPARATE_BUILD=	flavored
HAS_CONFIGURE=	Yes
USE_GMAKE= Yes

CONFIGURE_ARGS=	--prefix='$${DESTDIR}${PREFIX}' \
		--with-gnu-make \
		--site-prefixes='${LOCALBASE}:/usr' \
		--gung-ho \
		--with-ncurses \
		--infodir='$${DESTDIR}${PREFIX}/info' \
		--infopath='${LOCALBASE}/info:/usr/share/info'

FAKE_FLAGS= prefix='$${WRKINST}$${DESTDIR}${PREFIX}' infodir='$${WRKINST}$${DESTDIR}${PREFIX}/info'
FLAVOR?=

FLAVORS=	mule compface clashdetect no_x11
FLAVOR?=

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+=--without-x11
.else
# X11-DEPENDANT flavors

LIB_DEPENDS= 	jpeg.62::graphics/jpeg  \
		png.1.::graphics/png

.if ${FLAVOR:L:Mcompface}
PERMIT_PACKAGE_CDROM=   No
BUILD_DEPENDS=  ${PREFIX}/lib/libcompface.a::graphics/compface
CONFIGURE_ARGS+=--with-xface
.else
PERMIT_PACKAGE_CDROM=   Yes
CONFIGURE_ARGS+=--with-xface=no
.endif

# end of X11 dependant flavors
.endif

# X11-independant flavors
.if ${FLAVOR:L:Mmule}
CONFIGURE_ARGS+=--with-mule
.endif

# clash detection flavor needs LOCKDIR to be set to the path
# of the directory where clash detection lockfiles will be put
# some people dislikes this feature because anybody able to read
# this directory can see what other people are working on
# w/o this feature, clash detection still occur using lockfiles present 
# in the same directory as the file being edited (.#files#) but clash
# detection won't work well with symlinked files

.if ${FLAVOR:L:Mclashdetect} && defined(LOCKDIR)
CONFIGURE_ARGS+=--with-clash-detection --lockdir='$${LOCKDIR}'
.endif

# End of X11-independant flavors

# Arch string for configure
# copied from xemacs20 ports
# credits go to hgweigand@wiesbaden.netsurf.de

.if ${MACHINE} == "arc" || ${MACHINE} == "pmax" || ${MACHINE} == "wgrisc"
M_ARCH=         mipsel
.elif ${MACHINE} == "hkmips" || ${MACHINE} == "sgi"
M_ARCH=         mips
.else
M_ARCH=         ${MACHINE_ARCH}
.endif
GCCARCH=        ${M_ARCH}-unknown-openbsd${OSREV}

SED_PLIST=      |sed -e 's,@@GCCARCH@@,${GCCARCH},'

CONFIGURE_ARGS+= ${GCCARCH} 

# Strip from xemacs20 port makefile
# credits go to hgweigand@wiesbaden.netsurf.de

INSTALL_STRIP=
STRIP_PROGS=    b2m ctags etags gnuclient

.if (${MACHINE_ARCH} != "alpha")
STRIP_PROGS+=   ${DISTNAME}
.endif
STRIP_EXECS=    cvtmail digest-doc fakemail gnuserv hexl make-docfile \
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
