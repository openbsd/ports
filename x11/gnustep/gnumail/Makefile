# $OpenBSD: Makefile,v 1.18 2013/10/19 13:24:59 sebastia Exp $

COMMENT=	GNUstep mail application

DISTNAME=	GNUMail-1.2.0pre3
REVISION =	13
SHARED_LIBS=	GNUMail 2.0	# .1.2
CATEGORIES=	mail

HOMEPAGE=	http://www.collaboration-world.com/gnumail

WANTLIB+=	c m pthread AddressView Addresses Pantomime

MASTER_SITES=	${HOMEPAGE}.data/releases/Stable/

MODULES=	x11/gnustep
LIB_DEPENDS=	x11/gnustep/addresses \
		x11/gnustep/pantomime

MAKE_ENV+=	GNUMail_INTERFACE_VERSION=${LIBGNUMail_VERSION}

WRKDIST=	${WRKDIR}/GNUMail

BUNDLES=	Account Advanced Clock Colors Compose Emoticon Fonts \
		Filtering Face Import MIME PGP Receiving Sending Viewing

post-extract:
	@rm ${WRKSRC}/Framework/GNUMail/MailWindowController.m.orig
	perl -pi -e 's/\x0d/\x0a/g' ${WRKSRC}/Framework/GNUMail/EditWindowToolbar.m \
				${WRKSRC}/Framework/GNUMail/MailboxManagerToolbar.m

pre-configure:
.for i in ${BUNDLES}
	@perl -pi -e 's,^BUNDLE_INSTALL_DIR.*,BUNDLE_INSTALL_DIR=\$$(GNUSTEP_APPLICATION_SUPPORT)/GNUMail,g' \
		${WRKSRC}/Bundles/${i}/GNUmakefile
.endfor

.include <bsd.port.mk>
