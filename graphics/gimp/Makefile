# OpenBSD makefile for:    GIMP
# Version required:     0.54.1
# Date created:         December 12, 1997
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.2 1998/03/11 18:04:10 marc Exp $
#

DISTNAME=       gimp
PKGNAME=        gimp-0.54.1
CATEGORIES=     graphics
MASTER_SITES=   ftp://ftp.xcf.berkeley.edu/pub/gimp/
EXTRACT_SUFX=	-0.54.1.tar.gz

MAINTAINER=     angelos@openbsd.org

LIB_DEPENDS+=	png\\.0\\.[7-9]:${PORTSDIR}/graphics/png
LIB_DEPENDS+=	jpeg\\.7\\.:${PORTSDIR}/graphics/jpeg
LIB_DEPENDS+=	tiff\\.3\\.:${PORTSDIR}/graphics/tiff
LIB_DEPENDS+=	Xpm\\.4\\.:${PORTSDIR}/graphics/xpm

BROKEN=		"obsolete, distfile no longer available"

REQUIRES_MOTIF=	yes
USE_X11=	yes

HAS_CONFIGURE=	yes
CONFIGURE_ARGS=	--x-libraries=$(X11BASE)/lib --x-includes=$(X11BASE)/include

post-extract:
	mv $(WRKSRC)/gimprc $(WRKSRC)/gimprc.orig
	sed "s/\/usr\/local/`echo $(PREFIX)|sed s/\\\\//\\\\\\\\\\\\//g`/g" < $(WRKSRC)/gimprc.orig > $(WRKSRC)/gimprc

do-install:
	mkdir -p $(PREFIX)/lib/gimp
	mkdir -p $(PREFIX)/lib/gimp/brushes
	mkdir -p $(PREFIX)/lib/gimp/plug-ins
	$(INSTALL_PROGRAM) $(WRKSRC)/app/gimp $(PREFIX)/bin
	$(INSTALL_DATA) $(WRKSRC)/gimprc $(PREFIX)/lib/gimp
	$(INSTALL_DATA) $(WRKSRC)/brushes/* $(PREFIX)/lib/gimp/brushes
	for f in `find $(WRKSRC)/plug-ins -perm -0111 -type f -print`; \
	do $(INSTALL_PROGRAM) $$f $(PREFIX)/lib/gimp/plug-ins/`$(BASENAME) $$f`;done

post-install:
	@echo "Each user must copy $(PREFIX)/lib/gimp/gimprc"
	@echo "to his home directory as .gimprc."
.if !defined(NOPORTDOCS)
	mkdir -p $(PREFIX)/share/doc/gimp
	cp -r $(WRKSRC)/docs/* $(PREFIX)/share/doc/gimp
	chmod a+r $(PREFIX)/share/doc/gimp
.endif

.include <bsd.port.mk>
