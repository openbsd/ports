# $OpenBSD: Makefile,v 1.23 2001/02/09 02:06:23 brad Exp $

VER=		20.7
DISTNAME=	emacs-${VER}
CATEGORIES=	editors
NEED_VERSION=	1.336
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= emacs

MAINTAINER=	Matthew Economou <xenophon@irtnog.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SUBST_VARS=	GCCARCH VER

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu dest

FLAVORS=	no_x11
FLAVOR?=

.if ${MACHINE} == "pmax"
M_ARCH=		mipsel
.else
M_ARCH=		${MACHINE_ARCH}
.endif

GCCARCH=	${M_ARCH}-unknown-openbsd${OPSYS_VER}

# Uncomment for POP support
#CONFIGURE_ARGS+=--with-pop
# Uncomment for Kerberos support
#CONFIGURE_ARGS+=--with-kerberos
# Uncomment for Hesiod support
#CONFIGURE_ARGS+=--with-hesiod

.if ${FLAVOR:L} == "no_x11"
CONFIGURE_ARGS+= --without-x
.else
CONFIGURE_ARGS+= ${GCCARCH} --with-x-toolkit
.endif

# Do NOT strip on install.  We will strip those things that can be
# stripped after install. (emacs crashes if stripped on an alpha)
# To do the job correctly temacs should be stripped, not emacs
# (which is created from temacs).
INSTALL_STRIP=
STRIP_PROGS=	emacsclient etags ctags b2m
.if (${MACHINE_ARCH} != "alpha")
STRIP_PROGS+=	${DISTNAME}
.endif
STRIP_EXECS=	cvtmail digest-doc emacsserver fakemail hexl movemail \
		profile sorted-doc yow

post-install:
.for file in ${STRIP_PROGS}
	@strip ${PREFIX}/bin/${file}
.endfor
.for file in ${STRIP_EXECS}
	@strip ${PREFIX}/libexec/emacs/${VER}/${GCCARCH}/${file}
.endfor

.include <bsd.port.mk>
