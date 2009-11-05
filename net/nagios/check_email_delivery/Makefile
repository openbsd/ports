# $OpenBSD: Makefile,v 1.1.1.1 2009/11/05 13:27:26 sthen Exp $

COMMENT=	Nagios plugin to check full email delivery loop (SMTP/IMAP)

DISTNAME=	check_email_delivery-0.6.6
CATEGORIES=	net

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

HOMEPAGE=	http://buhacoff.net/software/check_email_delivery/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/archive/

NO_BUILD=	Yes
NO_REGRESS=	Yes

RUN_DEPENDS=	::mail/p5-Mail-IMAPClient \
		::net/p5-Net-SMTP_auth \
		::net/p5-Net-SMTP-SSL \
		::net/p5-Net-SMTP-TLS \
		::security/p5-Authen-SASL \
		::security/p5-IO-Socket-SSL \
		::textproc/p5-Text-Template

do-configure:
	@${SUBST_CMD} ${WRKSRC}/check_email_delivery ${WRKSRC}/check_email_delivery_epn

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/nagios
# the ePN-compatible plugins are nearly identical to the normal ones,
# they just don't include the pod documentation; no point installing both
# versions.
.for i in email_delivery imap_receive smtp_send
	${INSTALL_SCRIPT} ${WRKSRC}/check_$i_epn ${PREFIX}/libexec/nagios/check_$i
	pod2man ${WRKSRC}/check_$i ${PREFIX}/man/man3p/check_$i.3p
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/check_email_delivery
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/check_email_delivery

.include <bsd.port.mk>
