/* Copyright (c) 2016 Google Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

//
//  GTLQueryCalendar.m
//

// ----------------------------------------------------------------------------
// NOTE: This file is generated from Google APIs Discovery Service.
// Service:
//   Calendar API (calendar/v3)
// Description:
//   Manipulates events and other calendar data.
// Documentation:
//   https://developers.google.com/google-apps/calendar/firstapp
// Classes:
//   GTLQueryCalendar (37 custom class methods, 33 custom properties)

#import "GTLQueryCalendar.h"

#import "GTLCalendarAcl.h"
#import "GTLCalendarAclRule.h"
#import "GTLCalendarCalendar.h"
#import "GTLCalendarCalendarList.h"
#import "GTLCalendarCalendarListEntry.h"
#import "GTLCalendarChannel.h"
#import "GTLCalendarColors.h"
#import "GTLCalendarEvent.h"
#import "GTLCalendarEvents.h"
#import "GTLCalendarFreeBusyRequestItem.h"
#import "GTLCalendarFreeBusyResponse.h"
#import "GTLCalendarSetting.h"
#import "GTLCalendarSettings.h"

@implementation GTLQueryCalendar

@dynamic alwaysIncludeEmail, calendarExpansionMax, calendarId, colorRgbFormat,
         destination, eventId, fields, groupExpansionMax, iCalUID, items,
         maxAttendees, maxResults, minAccessRole, orderBy, originalStart,
         pageToken, privateExtendedProperty, q, ruleId, sendNotifications,
         setting, sharedExtendedProperty, showDeleted, showHidden,
         showHiddenInvitations, singleEvents, supportsAttachments, syncToken,
         text, timeMax, timeMin, timeZone, updatedMin;

+ (NSDictionary *)arrayPropertyToClassMap {
  NSDictionary *map = @{
    @"items" : [GTLCalendarFreeBusyRequestItem class],
    @"privateExtendedProperty" : [NSString class],
    @"sharedExtendedProperty" : [NSString class]
  };
  return map;
}

#pragma mark - "acl" methods
// These create a GTLQueryCalendar object.

+ (instancetype)queryForAclDeleteWithCalendarId:(NSString *)calendarId
                                         ruleId:(NSString *)ruleId {
  NSString *methodName = @"calendar.acl.delete";
  GTLQueryCalendar *query = [self queryWithMethodName:methodName];
  query.calendarId = calendarId;
  query.ruleId = ruleId;
  return query;
}

+ (instancetype)queryForAclGetWithCalendarId:(NSString *)calendarId
                                      ruleId:(NSString *)ruleId {
  NSString *methodName = @"calendar.acl.get";
  GTLQueryCalendar *query = [self queryWithMethodName:methodName];
  query.calendarId = calendarId;
  query.ruleId = ruleId;
  query.expectedObjectClass = [GTLCalendarAclRule class];
  return query;
}

+ (instancetype)queryForAclInsertWithObject:(GTLCalendarAclRule *)object
                                 calendarId:(NSString *)calendarId {
  if (object == nil) {
    GTL_DEBUG_ASSERT(object != nil, @"%@ got a nil object", NSStringFromSelector(_cmd));
    return nil;
  }
  NSString *methodName = @"calendar.acl.insert";
  GTLQueryCalendar *query = [self queryWithMethodName:methodName];
  query.bodyObject = object;
  query.calendarId = calendarId;
  query.expectedObjectClass = [GTLCalendarAclRule class];
  return query;
}

+ (instancetype)queryForAclListWithCalendarId:(NSString *)calendarId {
  NSString *methodName = @"calendar.acl.list";
  GTLQueryCalendar *query = [self queryWithMethodName:methodName];
  query.calendarId = calendarId;
  query.expectedObjectClass = [GTLCalendarAcl class];
  return query;
}

+ (instancetype)queryForAclPatchWithObject:(GTLCalendarAclRule *)object
                                calendarId:(NSString *)calendarId
                                    ruleId:(NSString *)ruleId {
  if (object == nil) {
    GTL_DEBUG_ASSERT(object != nil, @"%@ got a nil object", NSStringFromSelector(_cmd));
    return nil;
  }
  NSString *methodName = @"calendar.acl.patch";
  GTLQueryCalendar *query = [self queryWithMethodName:methodName];
  query.bodyObject = object;
  query.calendarId = calendarId;
  query.ruleId = ruleId;
  query.expectedObjectClass = [GTLCalendarAclRule class];
  return query;
}

+ (instancetype)queryForAclUpdateWithObject:(GTLCalendarAclRule *)object
                                 calendarId:(NSString *)calendarId
                                     ruleId:(NSString *)ruleId {
  if (object == nil) {
    GTL_DEBUG_ASSERT(object != nil, @"%@ got a nil object", NSStringFromSelector(_cmd));
    return nil;
  }
  NSString *methodName = @"calendar.acl.update";
  GTLQueryCalendar *query = [self queryWithMethodName:methodName];
  query.bodyObject = object;
  query.calendarId = calendarId;
  query.ruleId = ruleId;
  query.expectedObjectClass = [GTLCalendarAclRule class];
  return query;
}

+ (instancetype)queryForAclWatchWithObject:(GTLCalendarChannel *)object
                                calendarId:(NSString *)calendarId {
  if (object == nil) {
    GTL_DEBUG_ASSERT(object != nil, @"%@ got a nil object", NSStringFromSelector(_cmd));
    return nil;
  }
  NSString *methodName = @"calendar.acl.watch";
  GTLQueryCalendar *query = [self queryWithMethodName:methodName];
  query.bodyObject = object;
  query.calendarId = calendarId;
  query.expectedObjectClass = [GTLCalendarChannel class];
  return query;
}

#pragma mark - "calendarList" methods
// These create a GTLQueryCalendar object.

+ (instancetype)queryForCalendarListDeleteWithCalendarId:(NSString *)calendarId {
  NSString *methodName = @"calendar.calendarList.delete";
  GTLQueryCalendar *query = [self queryWithMethodName:methodName];
  query.calendarId = calendarId;
  return query;
}

+ (instancetype)queryForCalendarListGetWithCalendarId:(NSString *)calendarId {
  NSString *methodName = @"calendar.calendarList.get";
  GTLQueryCalendar *query = [self queryWithMethodName:methodName];
  query.calendarId = calendarId;
  query.expectedObjectClass = [GTLCalendarCalendarListEntry class];
  return query;
}

+ (instancetype)queryForCalendarListInsertWithObject:(GTLCalendarCalendarListEntry *)object {
  if (object == nil) {
    GTL_DEBUG_ASSERT(object != nil, @"%@ got a nil object", NSStringFromSelector(_cmd));
    return nil;
  }
  NSString *methodName = @"calendar.calendarList.insert";
  GTLQueryCalendar *query = [self queryWithMethodName:methodName];
  query.bodyObject = object;
  query.expectedObjectClass = [GTLCalendarCalendarListEntry class];
  return query;
}

+ (instancetype)queryForCalendarListList {
  NSString *methodName = @"calendar.calendarList.list";
  GTLQueryCalendar *query = [self queryWithMethodName:methodName];
  query.expectedObjectClass = [GTLCalendarCalendarList class];
  return query;
}

+ (instancetype)queryForCalendarListPatchWithObject:(GTLCalendarCalendarListEntry *)object
                                         calendarId:(NSString *)calendarId {
  if (object == nil) {
    GTL_DEBUG_ASSERT(object != nil, @"%@ got a nil object", NSStringFromSelector(_cmd));
    return nil;
  }
  NSString *methodName = @"calendar.calendarList.patch";
  GTLQueryCalendar *query = [self queryWithMethodName:methodName];
  query.bodyObject = object;
  query.calendarId = calendarId;
  query.expectedObjectClass = [GTLCalendarCalendarListEntry class];
  return query;
}

+ (instancetype)queryForCalendarListUpdateWithObject:(GTLCalendarCalendarListEntry *)object
                                          calendarId:(NSString *)calendarId {
  if (object == nil) {
    GTL_DEBUG_ASSERT(object != nil, @"%@ got a nil object", NSStringFromSelector(_cmd));
    return nil;
  }
  NSString *methodName = @"calendar.calendarList.update";
  GTLQueryCalendar *query = [self queryWithMethodName:methodName];
  query.bodyObject = object;
  query.calendarId = calendarId;
  query.expectedObjectClass = [GTLCalendarCalendarListEntry class];
  return query;
}

+ (instancetype)queryForCalendarListWatchWithObject:(GTLCalendarChannel *)object {
  if (object == nil) {
    GTL_DEBUG_ASSERT(object != nil, @"%@ got a nil object", NSStringFromSelector(_cmd));
    return nil;
  }
  NSString *methodName = @"calendar.calendarList.watch";
  GTLQueryCalendar *query = [self queryWithMethodName:methodName];
  query.bodyObject = object;
  query.expectedObjectClass = [GTLCalendarChannel class];
  return query;
}

#pragma mark - "calendars" methods
// These create a GTLQueryCalendar object.

+ (instancetype)queryForCalendarsClearWithCalendarId:(NSString *)calendarId {
  NSString *methodName = @"calendar.calendars.clear";
  GTLQueryCalendar *query = [self queryWithMethodName:methodName];
  query.calendarId = calendarId;
  return query;
}

+ (instancetype)queryForCalendarsDeleteWithCalendarId:(NSString *)calendarId {
  NSString *methodName = @"calendar.calendars.delete";
  GTLQueryCalendar *query = [self queryWithMethodName:methodName];
  query.calendarId = calendarId;
  return query;
}

+ (instancetype)queryForCalendarsGetWithCalendarId:(NSString *)calendarId {
  NSString *methodName = @"calendar.calendars.get";
  GTLQueryCalendar *query = [self queryWithMethodName:methodName];
  query.calendarId = calendarId;
  query.expectedObjectClass = [GTLCalendarCalendar class];
  return query;
}

+ (instancetype)queryForCalendarsInsertWithObject:(GTLCalendarCalendar *)object {
  if (object == nil) {
    GTL_DEBUG_ASSERT(object != nil, @"%@ got a nil object", NSStringFromSelector(_cmd));
    return nil;
  }
  NSString *methodName = @"calendar.calendars.insert";
  GTLQueryCalendar *query = [self queryWithMethodName:methodName];
  query.bodyObject = object;
  query.expectedObjectClass = [GTLCalendarCalendar class];
  return query;
}

+ (instancetype)queryForCalendarsPatchWithObject:(GTLCalendarCalendar *)object
                                      calendarId:(NSString *)calendarId {
  if (object == nil) {
    GTL_DEBUG_ASSERT(object != nil, @"%@ got a nil object", NSStringFromSelector(_cmd));
    return nil;
  }
  NSString *methodName = @"calendar.calendars.patch";
  GTLQueryCalendar *query = [self queryWithMethodName:methodName];
  query.bodyObject = object;
  query.calendarId = calendarId;
  query.expectedObjectClass = [GTLCalendarCalendar class];
  return query;
}

+ (instancetype)queryForCalendarsUpdateWithObject:(GTLCalendarCalendar *)object
                                       calendarId:(NSString *)calendarId {
  if (object == nil) {
    GTL_DEBUG_ASSERT(object != nil, @"%@ got a nil object", NSStringFromSelector(_cmd));
    return nil;
  }
  NSString *methodName = @"calendar.calendars.update";
  GTLQueryCalendar *query = [self queryWithMethodName:methodName];
  query.bodyObject = object;
  query.calendarId = calendarId;
  query.expectedObjectClass = [GTLCalendarCalendar class];
  return query;
}

#pragma mark - "channels" methods
// These create a GTLQueryCalendar object.

+ (instancetype)queryForChannelsStopWithObject:(GTLCalendarChannel *)object {
  if (object == nil) {
    GTL_DEBUG_ASSERT(object != nil, @"%@ got a nil object", NSStringFromSelector(_cmd));
    return nil;
  }
  NSString *methodName = @"calendar.channels.stop";
  GTLQueryCalendar *query = [self queryWithMethodName:methodName];
  query.bodyObject = object;
  return query;
}

#pragma mark - "colors" methods
// These create a GTLQueryCalendar object.

+ (instancetype)queryForColorsGet {
  NSString *methodName = @"calendar.colors.get";
  GTLQueryCalendar *query = [self queryWithMethodName:methodName];
  query.expectedObjectClass = [GTLCalendarColors class];
  return query;
}

#pragma mark - "events" methods
// These create a GTLQueryCalendar object.

+ (instancetype)queryForEventsDeleteWithCalendarId:(NSString *)calendarId
                                           eventId:(NSString *)eventId {
  NSString *methodName = @"calendar.events.delete";
  GTLQueryCalendar *query = [self queryWithMethodName:methodName];
  query.calendarId = calendarId;
  query.eventId = eventId;
  return query;
}

+ (instancetype)queryForEventsGetWithCalendarId:(NSString *)calendarId
                                        eventId:(NSString *)eventId {
  NSString *methodName = @"calendar.events.get";
  GTLQueryCalendar *query = [self queryWithMethodName:methodName];
  query.calendarId = calendarId;
  query.eventId = eventId;
  query.expectedObjectClass = [GTLCalendarEvent class];
  return query;
}

+ (instancetype)queryForEventsImportWithObject:(GTLCalendarEvent *)object
                                    calendarId:(NSString *)calendarId {
  if (object == nil) {
    GTL_DEBUG_ASSERT(object != nil, @"%@ got a nil object", NSStringFromSelector(_cmd));
    return nil;
  }
  NSString *methodName = @"calendar.events.import";
  GTLQueryCalendar *query = [self queryWithMethodName:methodName];
  query.bodyObject = object;
  query.calendarId = calendarId;
  query.expectedObjectClass = [GTLCalendarEvent class];
  return query;
}

+ (instancetype)queryForEventsInsertWithObject:(GTLCalendarEvent *)object
                                    calendarId:(NSString *)calendarId {
  if (object == nil) {
    GTL_DEBUG_ASSERT(object != nil, @"%@ got a nil object", NSStringFromSelector(_cmd));
    return nil;
  }
  NSString *methodName = @"calendar.events.insert";
  GTLQueryCalendar *query = [self queryWithMethodName:methodName];
  query.bodyObject = object;
  query.calendarId = calendarId;
  query.expectedObjectClass = [GTLCalendarEvent class];
  return query;
}

+ (instancetype)queryForEventsInstancesWithCalendarId:(NSString *)calendarId
                                              eventId:(NSString *)eventId {
  NSString *methodName = @"calendar.events.instances";
  GTLQueryCalendar *query = [self queryWithMethodName:methodName];
  query.calendarId = calendarId;
  query.eventId = eventId;
  query.expectedObjectClass = [GTLCalendarEvents class];
  return query;
}

+ (instancetype)queryForEventsListWithCalendarId:(NSString *)calendarId {
  NSString *methodName = @"calendar.events.list";
  GTLQueryCalendar *query = [self queryWithMethodName:methodName];
  query.calendarId = calendarId;
  query.expectedObjectClass = [GTLCalendarEvents class];
  return query;
}

+ (instancetype)queryForEventsMoveWithCalendarId:(NSString *)calendarId
                                         eventId:(NSString *)eventId
                                     destination:(NSString *)destination {
  NSString *methodName = @"calendar.events.move";
  GTLQueryCalendar *query = [self queryWithMethodName:methodName];
  query.calendarId = calendarId;
  query.eventId = eventId;
  query.destination = destination;
  query.expectedObjectClass = [GTLCalendarEvent class];
  return query;
}

+ (instancetype)queryForEventsPatchWithObject:(GTLCalendarEvent *)object
                                   calendarId:(NSString *)calendarId
                                      eventId:(NSString *)eventId {
  if (object == nil) {
    GTL_DEBUG_ASSERT(object != nil, @"%@ got a nil object", NSStringFromSelector(_cmd));
    return nil;
  }
  NSString *methodName = @"calendar.events.patch";
  GTLQueryCalendar *query = [self queryWithMethodName:methodName];
  query.bodyObject = object;
  query.calendarId = calendarId;
  query.eventId = eventId;
  query.expectedObjectClass = [GTLCalendarEvent class];
  return query;
}

+ (instancetype)queryForEventsQuickAddWithCalendarId:(NSString *)calendarId
                                                text:(NSString *)text {
  NSString *methodName = @"calendar.events.quickAdd";
  GTLQueryCalendar *query = [self queryWithMethodName:methodName];
  query.calendarId = calendarId;
  query.text = text;
  query.expectedObjectClass = [GTLCalendarEvent class];
  return query;
}

+ (instancetype)queryForEventsUpdateWithObject:(GTLCalendarEvent *)object
                                    calendarId:(NSString *)calendarId
                                       eventId:(NSString *)eventId {
  if (object == nil) {
    GTL_DEBUG_ASSERT(object != nil, @"%@ got a nil object", NSStringFromSelector(_cmd));
    return nil;
  }
  NSString *methodName = @"calendar.events.update";
  GTLQueryCalendar *query = [self queryWithMethodName:methodName];
  query.bodyObject = object;
  query.calendarId = calendarId;
  query.eventId = eventId;
  query.expectedObjectClass = [GTLCalendarEvent class];
  return query;
}

+ (instancetype)queryForEventsWatchWithObject:(GTLCalendarChannel *)object
                                   calendarId:(NSString *)calendarId {
  if (object == nil) {
    GTL_DEBUG_ASSERT(object != nil, @"%@ got a nil object", NSStringFromSelector(_cmd));
    return nil;
  }
  NSString *methodName = @"calendar.events.watch";
  GTLQueryCalendar *query = [self queryWithMethodName:methodName];
  query.bodyObject = object;
  query.calendarId = calendarId;
  query.expectedObjectClass = [GTLCalendarChannel class];
  return query;
}

#pragma mark - "freebusy" methods
// These create a GTLQueryCalendar object.

+ (instancetype)queryForFreebusyQuery {
  NSString *methodName = @"calendar.freebusy.query";
  GTLQueryCalendar *query = [self queryWithMethodName:methodName];
  query.expectedObjectClass = [GTLCalendarFreeBusyResponse class];
  return query;
}

#pragma mark - "settings" methods
// These create a GTLQueryCalendar object.

+ (instancetype)queryForSettingsGetWithSetting:(NSString *)setting {
  NSString *methodName = @"calendar.settings.get";
  GTLQueryCalendar *query = [self queryWithMethodName:methodName];
  query.setting = setting;
  query.expectedObjectClass = [GTLCalendarSetting class];
  return query;
}

+ (instancetype)queryForSettingsList {
  NSString *methodName = @"calendar.settings.list";
  GTLQueryCalendar *query = [self queryWithMethodName:methodName];
  query.expectedObjectClass = [GTLCalendarSettings class];
  return query;
}

+ (instancetype)queryForSettingsWatchWithObject:(GTLCalendarChannel *)object {
  if (object == nil) {
    GTL_DEBUG_ASSERT(object != nil, @"%@ got a nil object", NSStringFromSelector(_cmd));
    return nil;
  }
  NSString *methodName = @"calendar.settings.watch";
  GTLQueryCalendar *query = [self queryWithMethodName:methodName];
  query.bodyObject = object;
  query.expectedObjectClass = [GTLCalendarChannel class];
  return query;
}

@end
