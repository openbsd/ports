# $OpenBSD: Makefile,v 1.3 1998/10/18 05:02:06 marc Exp $
#

DISTNAME=	vim-5.1
CATEGORIES=	editors

#BROKEN=	"newer version available"

MAINTAINER=     downsj@downsj.com

MASTER_SITES=	ftp://nuxi.ucdavis.edu/pub/vim/unix/ \
		ftp://ftp.nuxi.com/pub/vim/unix/ \
		ftp://ftp.oce.nl/pub/vim/unix/  \
		ftp://ftp.prz.tu-berlin.de/pub/unix/editors/vim/unix/  \
		ftp://ftp.is.co.za/applications/editors/vim/  \
		ftp://ftp.progsoc.uts.edu.au/pub/vim/

PATCH_DIST_ARGS=	-d ${WRKDIR}/${DISTNAME} --forward --quiet -E ${PATCH_DIST_STRIP}
WRKSRC=		${WRKDIR}/${DISTNAME}/src
MAKE_FLAGS=	CONF_ARGS=--prefix=${PREFIX} -f
ALL_TARGET=	#

.if defined(HAVE_MOTIF)
REQUIRES_MOTIF=	yes
MAKE_FLAGS:=	CONF_OPT_GUI="--enable-gui=motif" MOTIFHOME=${X11BASE} ${MAKE_FLAGS}
.else
MAKE_FLAGS:=	CONF_OPT_GUI="--enable-gui=yes" ${MAKE_FLAGS}
.endif

pre-build:
	@(cd ${WRKSRC}; ${MAKE} distclean)

post-install:
	[ -e ${PREFIX}/bin/gvim ] || /bin/ln -s ${PREFIX}/bin/vim ${PREFIX}/bin/gvim
	@echo "Vim tools (ctags and xxd) are NOT installed by default."
	@echo "You must install them by hand if you want them."
	@echo "cd to ${WRKSRC} and type"
	@echo "'make installtools'."

.include <bsd.port.mk>
