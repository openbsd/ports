# $OpenBSD: Makefile,v 1.8 2010/10/24 13:03:22 sebastia Exp $

COMMENT=	GNUstep mail application

DISTNAME=	GNUMail-1.2.0pre3
PKGNAME=	${DISTNAME:L}
REVISION=	5
SHARED_LIBS=	GNUMail 2.0	# .1.2
CATEGORIES=	mail

HOMEPAGE=	http://www.collaboration-world.com/gnumail

WANTLIB += c gnustep-base gnustep-gui m objc pthread AddressView
WANTLIB += Addresses Pantomime

MASTER_SITES=	${HOMEPAGE}.data/releases/Stable/

MODULES=	x11/gnustep
LIB_DEPENDS=	::x11/gnustep/addresses \
		::x11/gnustep/addresses \
		::x11/gnustep/pantomime
RUN_DEPENDS=	:gnustep-back-*:x11/gnustep/back

MAKE_ENV+=	GNUMail_INTERFACE_VERSION=${LIBGNUMail_VERSION}

WRKDIST=	${WRKDIR}/GNUMail

BUNDLES=	Account Advanced Clock Colors Compose Emoticon Fonts \
		Filtering Face Import MIME PGP Receiving Sending Viewing

post-extract:
	@rm ${WRKSRC}/Framework/GNUMail/MailWindowController.m.orig

pre-configure:
	@perl -pi -e 's,^GNUMAIL_MAJOR_VERSION=.*,GNUMAIL_MAJOR_VERSION=${LIBGNUMail_VERSION:R},g;' \
		-e 's,^GNUMAIL_MINOR_VERSION=.*,GNUMAIL_MINOR_VERSION=${LIBGNUMail_VERSION:E},g' \
		${WRKSRC}/Framework/GNUMail/GNUmakefile
.for i in ${BUNDLES}
	@perl -pi -e 's,^BUNDLE_INSTALL_DIR.*,BUNDLE_INSTALL_DIR=\$$(GNUSTEP_APPLICATION_SUPPORT)/GNUMail,g' \
		${WRKSRC}/Bundles/${i}/GNUmakefile
.endfor

.include <bsd.port.mk>
