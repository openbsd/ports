# $OpenBSD: Makefile,v 1.11 2000/04/18 10:34:09 turan Exp $

DISTNAME=       netatalk-990130
CATEGORIES=	net
FAKE=No
MASTER_SITES=   ftp://terminator.rs.itd.umich.edu/unix/netatalk/

MAINTAINER=	ianm@cit.nepean.uws.edu.au	

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# NOTES:
# Will compile with kerberos support in apfd and papd.
# Haven't tested kerberos support as there is no MacOS
# support for kerberos outside the US, so your on your
# own. Still need to add support for AFS. Will update
# the Port shortly.

pre-fetch:
.if !defined(NO_WARNINGS)
	@if [ ! -f /usr/src/sys/netatalk/at_extern.h ]; then \
	 echo "This port requires the kernel source code to compile properly,"; \
	 echo "specifically the source code in /usr/src/sys/netatalk"; \
	 false ; \
	fi
.endif

pre-configure:
	@rm -rf ${WRKSRC}/include/netatalk
	@ln -sf /usr/src/sys/netatalk ${WRKSRC}/include/netatalk
	@rm -f ${WRKSRC}/sys/netatalk/*.h

post-install:
	@cp ${WRKSRC}/config/AppleVolumes.system ${PREFIX}/lib/netatalk
	@cp ${WRKSRC}/config/AppleVolumes.default ${PREFIX}/lib/netatalk
	@PKG_PREFIX="${PREFIX}" sh ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
