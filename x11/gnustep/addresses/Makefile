COMMENT=	GNUstep address book

VERSION =	0.5.0
DISTNAME=	Addresses-${VERSION}

SHARED_LIBS+=	Addresses 0.2	# .0.1
SHARED_LIBS+=	AddressView 0.1	# .0.1

CATEGORIES=	mail

HOMEPAGE=	http://gap.nongnu.org/addresses/index.html

WANTLIB =	Inspector
WANTLIB += ${COMPILER_LIBCXX}

SITES=		${SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
LIB_DEPENDS +=	x11/gnustep/gworkspace

MAKE_FLAGS+=	Addresses_VERSION=${LIBAddresses_VERSION} \
		Addresses_INTERFACE_VERSION=${LIBAddresses_VERSION} \
		AddressView_VERSION=${LIBAddressView_VERSION} \
		AddressView_INTERFACE_VERSION=${LIBAddressView_VERSION} \
		disable-ldapaddressbook=yes

ALL_TARGET =	all goodies
INSTALL_TARGET = install goodies-install

SUBST_VARS +=	VERSION

.include <bsd.port.mk>
