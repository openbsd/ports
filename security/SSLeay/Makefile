# $OpenBSD: Makefile,v 1.6 1999/03/28 23:03:25 brad Exp $

DISTNAME=	SSLeay-0.9.0b
CATEGORIES=     security
MASTER_SITES=	ftp://ftp.psy.uq.oz.au/pub/Crypto/SSL/ \
		ftp://ftp.funet.fi/pub/mirrors/ftp.psy.uq.oz.au/SSL/ \
		ftp://sunsite.doc.ic.ac.uk/Mirrors/ftp.psy.uq.oz.au/pub/Crypto/SSL/ \
		ftp://ftp.internat.freebsd.org/pub/Crypto/SSL/

NO_CDROM=	"CRYPTO: Third party crypto not allowed."
RESTRICTED=	"Crypto; export-controlled"

MAINTAINER=	dugsong@monkey.org

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

HAS_CONFIGURE=	yes
CONFIGURE_SCRIPT=Configure

# gcc-2.8.* confuses DES names? destest fails, but not with gcc-2.7.*. fix.
CONFIGURE_ARGS+= -DPERL5

.if defined(USA_RESIDENT) && ${USA_RESIDENT} == YES
LIB_DEPENDS=	rsaref:${PORTSDIR}/security/rsaref
CONFIGURE_ENV+=	USA_RESIDENT=YES
CONFIGURE_ARGS+= -I../../rsaref/ -DRSAref
.endif

.if (${MACHINE_ARCH} == "i386")
CONFIGURE_ARGS+=	OpenBSD-x86
.elif (${MACHINE_ARCH} == "pmax")
CONFIGURE_ARGS+=	OpenBSD-pmax
.elif (${MACHINE_ARCH} == "arc")
CONFIGURE_ARGS+=	OpenBSD-arc
.elif (${MACHINE_ARCH} == "alpha")
CONFIGURE_ARGS+=	OpenBSD-alpha
.else
CONFIGURE_ARGS+=	OpenBSD-be
.endif

ALL_TARGET=	all test

post-patch:
.if defined(USA_RESIDENT) && ${USA_RESIDENT} == YES
	${PATCH} ${PATCH_DIST_ARGS} < ${FILESDIR}/rsaref.patch
.endif

pre-build:
.if defined(USA_RESIDENT) && ${USA_RESIDENT} == YES
	${CP} ${FILESDIR}/do-rsaref-ssl ${WRKSRC}
.endif

post-install:
	@${INSTALL_DATA} ${WRKSRC}/COPYRIGHT ${PREFIX}/ssl/
	@${ECHO} Please read ${PREFIX}/ssl/COPYRIGHT for license information.

.include <bsd.port.mk>
