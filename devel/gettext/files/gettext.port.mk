# $OpenBSD: gettext.port.mk,v 1.1 2001/09/23 05:29:47 brad Exp $

LIB_DEPENDS+=	intl.1:gettext->=0.10.37:devel/gettext
RUN_DEPENDS+=	:gettext->=0.10.37:devel/gettext
