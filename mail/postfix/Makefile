# OpenBSD makefile for:	postfix
# Version required:	beta-19981211
# Date created:		1998-Dec-10
# Whom:			dugsong@OpenBSD.ORG
#
# Relevant URLs:	http://www.postfix.org/
#			http://www.alphaworks.ibm.com/formula/securemailer/
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/12/16 18:30:46 dugsong Exp $

DISTNAME=	postfix-beta-19981211

CATEGORIES=     mail

MAINTAINER=	dugsong@monkey.org

NO_CDROM=	"LIC: redistribution not allowed"

MASTER_SITES=	see_do-fetch_target

IS_INTERACTIVE=	yes

NO_CONFIGURE=	yes

ALL_TARGET=	default

do-fetch:
	@if [ ! -f ${DISTDIR}/${DISTFILES} ]; then \
	   ${ECHO} "" ; \
	   ${ECHO} "  The source to this port may not be automatically fetched" ; \
	   ${ECHO} "  due to licensing restrictions. You MUST fetch the source" ; \
	   ${ECHO} "  manually after reading and agreeing to the license at:" ; \
	   ${ECHO} "" ; \
	   ${ECHO} "      http://www.alphaworks.ibm.com/formula/securemailer/" ; \
	   ${ECHO} "" ; \
	   ${ECHO} "  Once ${DISTFILES} has been downloaded,"; \
	   ${ECHO} "  move it to ${DISTDIR} and then restart this build." ; \
	   ${ECHO} "" ; \
	   exit 1 ; \
	fi

pre-install:
	@${SH} ${PKGDIR}/INSTALL with PRE-INSTALL

post-install:
	@${SH} ${PKGDIR}/INSTALL with POST-INSTALL

MAN1=	mailq.1 newaliases.1 postalias.1 postcat.1 postconf.1 postfix.1 \
	postkick.1 postlock.1 postlog.1 postmap.1 sendmail.1

MAN5=	access.5 aliases.5 canonical.5 relocated.5 transport.5 virtual.5

MAN8=	bounce.8 cleanup.8 defer.8 local.8 master.8 pickup.8 pipe.8 qmgr.8 \
	showq.8 smtp.8 smtpd.8 trivial-rewrite.8

.include <bsd.port.mk>
