# $OpenBSD: Makefile,v 1.6 1999/05/25 14:39:42 brad Exp $

DISTNAME=       netatalk-1.4b2
CATEGORIES=	net
MASTER_SITES=   ftp://terminator.rs.itd.umich.edu/unix/netatalk/

MAINTAINER=	ianm@cit.nepean.uws.edu.au	

# NOTES:
# Will compile with kerberos support in apfd and papd.
# Haven't tested kerberos support as there is no MacOS
# support for kerberos outside the US, so your on your
# own. Still need to add support for AFS. Will update
# the Port shortly.

pre-fetch:
	@if [ ! -f /usr/src/sys/netatalk/at_extern.h ]; then \
	 ${ECHO} This port requires the kernel source code to compile properly,; \
	 ${ECHO} specifically the source code in /usr/src/sys/netatalk; \
	 ${FALSE}; \
	fi

pre-configure:
	@${MKDIR} ${WRKSRC}/sys/openbsd
	@${CP} ${FILESDIR}/sys-OpenBSD-Makefile ${WRKSRC}/sys/openbsd/Makefile
	@${RM} -rf ${WRKSRC}/include/netatalk
	@${LN} -sf /usr/src/sys/netatalk ${WRKSRC}/include/netatalk
	@${RM} -f ${WRKSRC}/sys/netatalk/*.h

post-install:
	@${CP} ${WRKSRC}/config/AppleVolumes.system ${PREFIX}/lib/netatalk
	@${CP} ${WRKSRC}/config/AppleVolumes.default ${PREFIX}/lib/netatalk
	@PKG_PREFIX="${PREFIX}" ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
