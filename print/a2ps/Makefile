# New ports collection makefile for:    a2ps
# Version required:     4.9.9
# Date created:         31 January 1998
# Whom:                 Tobias Weingartner (weingart@openbsd.org)
#
# $OpenBSD: Makefile,v 1.5 1998/08/10 22:01:56 marc Exp $
#

DISTNAME=	a2ps-4.10.3
CATEGORIES=	print
MASTER_SITES=	http://www-inf.enst.fr/~demaille/ftp/a2ps/

MAINTAINER=	weingart@OpenBSD.org

# Note: You can get by without these
#
BUILD_DEPENDS=	gv:${PORTSDIR}/print/gv \
		dvips:${PORTSDIR}/print/teTeX \
		ps2pdf:${PORTSDIR}/print/ghostscript5 \
		psselect:${PORTSDIR}/print/psutils \
		convert:${PORTSDIR}/graphics/ImageMagick
RUN_DEPENDS=	gv:${PORTSDIR}/print/gv \
		dvips:${PORTSDIR}/print/teTeX \
		ps2pdf:${PORTSDIR}/print/ghostscript5 \
		psselect:${PORTSDIR}/print/psutils \
		convert:${PORTSDIR}/graphics/ImageMagick

IS_INTERACTIVE=		yes
MANUAL_PACKAGE_BUILD=	PAPERSIZE has to be set to Letter or A4
GNU_CONFIGURE=	yes


PAPERSIZE?=
STRIP=
CONFIGURE_ARGS=		--with-medium=$(PAPERSIZE) \
			--enable-static \
			--sysconfdir=/etc
.if (${MACHINE_ARCH} == "alpha")
CONFIGURE_ARGS+=	--disable-shared
.else
CONFIGURE_ARGS+=	--enable-shared
.endif

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
