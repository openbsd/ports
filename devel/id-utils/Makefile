# $OpenBSD: Makefile,v 1.12 1999/11/03 01:01:26 turan Exp $

BROKEN=		can not consistantly build this port based on which emacs is installed.  Mark broken until consistancy can be 100%.

DISTNAME=	id-utils-3.2d
CATEGORIES=	devel

MAINTAINER=	ports@OpenBSD.ORG

MASTER_SITES=	ftp://alpha.gnu.org/gnu/ \
		ftp://ftp.enst.fr/pub/gnu/gnits/

# take over the management of emacs file, as the current process is abysmal.
CONFIGURE_ARGS=--without-emacs
PKGNAME=${DISTNAME}
.if defined(WITHOUT_EMACS)
PKGNAME:=${PKGNAME}-noemacs
.else
BUILD_DEPENDS+=	emacs:${PORTSDIR}/editors/emacs
.endif
.if defined(WITHOUT_XEMACS)
PKGNAME:=${PKGNAME}-noxemacs
.else
BUILD_DEPENDS+=	xemacs:${PORTSDIR}/editors/xemacs20
.endif
PLIST=${WRKBUILD}/PLIST

post-build:
.if !defined(WITHOUT_EMACS)
	mkdir -p ${WRKBUILD}/elisp
	cd ${WRKBUILD}/elisp && ln -s -f ${WRKSRC}/lisp/id-utils.el && \
	EMACS=emacs ${SHELL} ${WRKSRC}/lisp/elisp-comp id-utils.el
.endif
.if !defined(WITHOUT_XEMACS)
	mkdir -p ${WRKBUILD}/xelisp
	cd ${WRKBUILD}/xelisp && ln -s -f ${WRKSRC}/lisp/id-utils.el && \
	EMACS=xemacs ${SHELL} ${WRKSRC}/lisp/elisp-comp id-utils.el
.endif

pre-install:
	@cp ${FILESDIR}/PLIST ${PLIST}
.if !defined(WITHOUT_EMACS)
	@echo "share/emacs/site-lisp/id-utils.el" >>${PLIST}
	@echo "share/emacs/site-lisp/id-utils.elc" >>${PLIST}
	${INSTALL_DATA_DIR} ${PREFIX}/share/emacs/site-lisp
	${INSTALL_DATA} ${WRKBUILD}/elisp/id-utils.el ${PREFIX}/share/emacs/site-lisp
	${INSTALL_DATA} ${WRKBUILD}/elisp/id-utils.elc ${PREFIX}/share/emacs/site-lisp
.endif
.if !defined(WITHOUT_XEMACS)
	@echo "lib/emacs/site-lisp/id-utils.el" >>${PLIST}
	@echo "lib/emacs/site-lisp/id-utils.elc" >>${PLIST}
	${INSTALL_DATA_DIR} ${PREFIX}/lib/emacs/site-lisp
	${INSTALL_DATA} ${WRKBUILD}/elisp/id-utils.el ${PREFIX}/lib/emacs/site-lisp
	${INSTALL_DATA} ${WRKBUILD}/elisp/id-utils.elc ${PREFIX}/lib/emacs/site-lisp
.endif
	

# International files don't want to be built separately
#
SEPARATE_BUILD=	simple
GNU_CONFIGURE=	yes
USE_GMAKE=	yes

.include <bsd.port.mk>
