# OpenBSD makefile for:	qpopper
# Version required:	2.4
# Date created:		1998-May-01
# Whom:			marc@OpenBSD.ORG
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/01 23:09:23 marc Exp $
#

# What port/package will be created
#
DISTNAME=		qpopper-2.4
CATEGORIES=     	mail

# where to send bitches about this port
#
MAINTAINER=		ports@openbsd.org

# Restrictions on the port/package
#
NO_CDROM=		"NOFEE: can't be sold"

# where the source files and patches can be fetched
#
MASTER_SITES=		ftp://ftp.qualcomm.com/eudora/servers/unix/popper/
DISTFILES=		qpopper2.4.tar.Z

# build/configuration variables
#
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--enable-debugging
CONFIGURE_ARGS+=	--enable-apop

# Overrides for default values
#
WRKSRC=			${WRKDIR}/qpopper2.4

# Do the install here as the applications Makefile does not perform
# the install function.  The steps are:
#
# 1) create pop user
# 2) install popper and popauth
# 3) install the man pages
# 4) create the APOP authentication database
#
do-install:
	@${SETENV} ${MAKE_ENV} perl ${SCRIPTDIR}/createuser
	@${INSTALL_PROGRAM} ${WRKSRC}/popper ${PREFIX}/libexec
	@${INSTALL_PROGRAM} ${WRKSRC}/popauth ${PREFIX}/sbin
	@${SED} -e 's,||EXECDIR||,${PREFIX}/libexec,' \
		${WRKSRC}/popper.8 > ${WRKSRC}/popper.8.out
	@${INSTALL_MAN} ${WRKSRC}/popper.8.out ${PREFIX}/man/man8/popper.8
	@${INSTALL_MAN} ${WRKSRC}/popauth.8 ${PREFIX}/man/man8
	@if [ ! -f /etc/pop.auth.db ]; then \
	    ${ECHO} "Initializing APOP authentication database"; \
	    ${PREFIX}/sbin/popauth -init; \
	 else \
	    ${ECHO} "Using existing APOP authentication database"; \
	 fi
	@${ECHO} "see popper(8) for final installation instructions"

.include <bsd.port.mk>
