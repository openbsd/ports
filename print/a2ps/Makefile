# $OpenBSD: Makefile,v 1.13 1999/11/27 13:33:50 kevlo Exp $
#

DISTNAME=	a2ps-4.12g
PKGNAME=	a2ps
CATEGORIES=	print

NEED_VERSION=	1.73

MAINTAINER=	weingart@OpenBSD.org

MASTER_SITES=	ftp://ftp.enst.fr/pub/unix/a2ps/

# Note: You can get by without these
#
BUILD_DEPENDS=	gv:${PORTSDIR}/print/gv \
		dvips:${PORTSDIR}/print/teTeX/base \
		ps2pdf:${PORTSDIR}/print/ghostscript5 \
		psselect:${PORTSDIR}/print/psutils \
		convert:${PORTSDIR}/graphics/ImageMagick
RUN_DEPENDS=	gv:${PORTSDIR}/print/gv \
		dvips:${PORTSDIR}/print/teTeX/base \
		ps2pdf:${PORTSDIR}/print/ghostscript5 \
		psselect:${PORTSDIR}/print/psutils \
		convert:${PORTSDIR}/graphics/ImageMagick

IS_INTERACTIVE=		yes
NO_PACKAGE=		interactive port
MANUAL_PACKAGE_BUILD=	PAPERSIZE has to be set to Letter or A4
GNU_CONFIGURE=	yes


PAPERSIZE?=
STRIP=
CONFIGURE_ARGS=		--with-medium=$(PAPERSIZE) \
			--enable-static \
			--sysconfdir=/etc \
			${CONFIGURE_SHARED}

Letter::
	$(MAKE) PAPERSIZE=Letter

letter::
	$(MAKE) PAPERSIZE=Letter

Letterdj::
	$(MAKE) PAPERSIZE=Letterdj

letterdj::
	$(MAKE) PAPERSIZE=Letterdj

A4::
	$(MAKE) PAPERSIZE=A4

a4::
	$(MAKE) PAPERSIZE=A4

pre-build:
	/usr/bin/touch $(WRKSRC)/doc/*.info
	/usr/bin/touch $(WRKSRC)/doc/*.dvi

pre-configure:
.if empty(PAPERSIZE)
	@echo
	@echo "PAPERSIZE not specified."
	@echo
	@echo "Must specify PAPERSIZE as one of A4, Letter, or Letterdj, either"
	@echo "using setenv, or via Makefile targets of the same name.  Note"
	@echo "that each PAPERSIZE has a leading capital letter, and Letterdj"
	@echo "allows a slightly larger margins for DeskJets."
	@echo
	@echo "Defaulting to PAPERSIZE=Letter."
	@echo Letter > $(WRKDIR)/.media
.elif $(PAPERSIZE)!=A4 && $(PAPERSIZE)!=Letter && $(PAPERSIZE)!=Letterdj
	@echo
	@echo "PAPERSIZE incorrect value: $(PAPERSIZE)."
	@echo
	@echo "Must specify PAPERSIZE as one of A4, Letter, or Letterdj, either"
	@echo "using setenv, or via Makefile targets of the same name.  Note"
	@echo "that each PAPERSIZE has a leading capital letter, and Letterdj"
	@echo "allows a slightly larger margins for DeskJets."
	@false
.else
	echo $(PAPERSIZE) > $(WRKDIR)/.media
.endif

.include <bsd.port.mk>

.if exists($(WRKDIR)/.media)
PAPERSIZE=
PAPERSIZE!=	cat $(WRKDIR)/.media
.endif
