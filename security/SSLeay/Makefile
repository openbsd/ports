# OpenBSD makefile for:	SSLeay
# Version required:	0.8.1b
# Date created:		1998-Jul-4
# Whom:			dugsong@OpenBSD.ORG
#
# $OpenBSD: Makefile,v 1.3 1998/12/16 20:27:58 marc Exp $
#

DISTNAME=	SSLeay-0.8.1b
CATEGORIES=     security

MAINTAINER=	dugsong@monkey.org

NO_CDROM=	"CRYPTO: Third party crypto not allowed."
RESTRICTED=	"Crypto; export-controlled"

MASTER_SITES=	ftp://ftp.psy.uq.oz.au/pub/Crypto/SSL/

.if !defined(NO_WARNINGS)
fetch-depends:
.if !defined(USA_RESIDENT) || ${USA_RESIDENT} != YES && ${USA_RESIDENT} != NO
	@${ECHO}
	@${ECHO} You must set the variable USA_RESIDENT to YES if you are a USA
	@${ECHO} resident or NO otherwise. USA residents must use the RSAREF2
	@${ECHO} library to build this program \(RSA Inc. holds
	@${ECHO} a patent on RSA in the USA - using RSA implementations
	@${ECHO} other than RSAREF in the USA will violate the US patent\).
	@${ECHO} the RSA algorithm and public key crypto in general - using RSA
	@${ECHO} implementations other than RSAREF violate US patent law\).
	@${ECHO} ""
	@${ECHO} RSAREF2 will be automatically used to build this program when
	@${ECHO} given the command \"make USA_RESIDENT=YES\"
	@${ECHO} ""
	@${FALSE}
.endif
.endif

post-patch:
.if defined(USA_RESIDENT) && ${USA_RESIDENT} == YES
	${PATCH} ${PATCH_DIST_ARGS} < ${FILESDIR}/rsaref.patch
.endif

HAS_CONFIGURE=		yes
CONFIGURE_SCRIPT=	Configure

.if defined(USA_RESIDENT) && ${USA_RESIDENT} == YES
LIB_DEPENDS=	rsaref:${PORTSDIR}/security/rsaref
CONFIGURE_ENV+=	USA_RESIDENT="YES"
CONFIGURE_ARGS+= -I../../rsaref/ -DRSAref
.endif

# gcc-2.8.* confuses DES names? destest fails, but not with gcc-2.7.*. fix.
CONFIGURE_ARGS+= -DPERL5

.if (${MACHINE_ARCH} == "i386")
CONFIGURE_ARGS+=	OpenBSD-x86
.elif (${MACHINE_ARCH} == "sparc")
CONFIGURE_ARGS+=	OpenBSD-sparc
.elif (${MACHINE_ARCH} == "alpha")
CONFIGURE_ARGS+=	alpha-gcc
.else
CONFIGURE_ARGS+=	gcc
.endif

ALL_TARGET=	all test

pre-build:
.if defined(USA_RESIDENT) && ${USA_RESIDENT} == YES
	${CP} ${FILESDIR}/do-rsaref-ssl ${WRKSRC}
.endif

post-install:
	@${INSTALL_DATA} ${WRKSRC}/COPYRIGHT ${PREFIX}/ssl/
	@${ECHO} Please read ${PREFIX}/ssl/COPYRIGHT for license information.

.include <bsd.port.mk>
